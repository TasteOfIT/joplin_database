import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'dao/daos.dart';

part 'database.g.dart';

const int _initialVersion = 41;
const int _currentVersion = 41;

@DriftDatabase(
  include: {'tables/tables.drift'},
  daos: Daos.all,
)
class JoplinDatabase extends _$JoplinDatabase {
  JoplinDatabase() : super(_openConnection());

  @override
  int get schemaVersion => _currentVersion;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        await customStatement('PRAGMA foreign_keys = OFF');
        if (from < _initialVersion) {
          log('Something went wrong for the database');
        }
        if (kDebugMode) {
          final wrongForeignKeys = await customSelect('PRAGMA foreign_key_check').get();
          assert(wrongForeignKeys.isEmpty, '${wrongForeignKeys.map((e) => e.data)}');
        }
      },
      beforeOpen: (details) async {
        if (details.wasCreated) {
          into(Version(attachedDatabase)).insert(VersionData(version: _initialVersion, tableFieldsVersion: 0));
        }
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'joplin.sqlite'));
    return NativeDatabase(file, logStatements: kDebugMode);
  });
}
