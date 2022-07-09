import 'package:flutter_modular/flutter_modular.dart';
import 'package:joplin_database/database/database.dart';

class DatabaseModule extends Module {
  @override
  List<Bind<Object>> get binds =>
      [Bind.lazySingleton<JoplinDatabase>((i) => JoplinDatabase(), onDispose: (db) => db.close(), export: true)];
}
