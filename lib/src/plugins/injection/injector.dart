abstract class Injector {
  void registerLazySingleton<T extends Object>(T Function() function);

  void registerSingleton<T extends Object>(T instance);

  void registerFactory<T extends Object>(T Function() function);

  T get<T extends Object>();

  void unregister<T extends Object>();
}
