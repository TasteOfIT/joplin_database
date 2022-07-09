import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'dao/daos.dart';

part 'database.g.dart';

@DriftDatabase(
  include: {'tables/tables.drift'},
  daos: [FolderDao],
)
class JoplinDatabase extends _$JoplinDatabase {
  JoplinDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 41;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'joplin.sqlite'));
    return NativeDatabase(file);
  });
}
