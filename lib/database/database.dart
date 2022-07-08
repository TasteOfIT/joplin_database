import 'package:drift/drift.dart';
import 'package:drift/native.dart';

part 'database.g.dart';

@DriftDatabase(
  include: {'queries/queries.drift'},
)
class JoplinDatabase extends _$JoplinDatabase {
  JoplinDatabase() : super(NativeDatabase.memory());

  @override
  int get schemaVersion => 41;

  Future<List<Folder>> getFolders() {
    return allFolders().get();
  }
}
