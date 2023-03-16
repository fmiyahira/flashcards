import 'package:flashcards/src/plugins/injection/injector.dart';
import 'package:get_it/get_it.dart';

class AppInjector implements Injector {
  AppInjector._();

  final GetIt _getIt = GetIt.instance;

  static Injector? _internal;
  static Injector get I => _instance;

  static Injector get _instance {
    _internal ??= AppInjector._();
    return _internal!;
  }

  @override
  T get<T extends Object>() => _getIt.get<T>();

  @override
  void registerFactory<T extends Object>(T Function() function) {
    _getIt.registerFactory<T>(() => function.call());
  }

  @override
  void registerLazySingleton<T extends Object>(T Function() function) {
    _getIt.registerLazySingleton<T>(() => function.call());
  }

  @override
  void registerSingleton<T extends Object>(T instance) =>
      _getIt.registerSingleton<T>(instance);

  @override
  void unregister<T extends Object>() => _getIt.unregister<T>();
}
