import 'dart:io';

import 'package:flashcards/constants.dart';
import 'package:flashcards/src/plugins/injection/injector.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class PluginDependencies {
  final Injector injector;

  PluginDependencies(this.injector);

  Future<void> registerDependencies() async {
    injector.registerSingleton<Database>(await prepareDatabaseDependency());
  }

  Future<Database> prepareDatabaseDependency() async {
    final Directory databasesPath = await getApplicationSupportDirectory();

    final DatabaseFactory dbFactory = databaseFactoryIo;
    final String dbPath = '${databasesPath.path}/database/$DATABASE_NAME';

    return await dbFactory.openDatabase(dbPath);
  }
}
