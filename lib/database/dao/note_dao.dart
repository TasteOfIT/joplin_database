import 'package:drift/drift.dart';

import '../database.dart';

part 'note_dao.g.dart';

@DriftAccessor(include: {'queries/notes.drift'})
class NoteDao extends DatabaseAccessor<JoplinDatabase> with _$NoteDaoMixin {
  NoteDao(JoplinDatabase db) : super(db);

  Future<List<Note>> getNotes() {
    return allNotes().get();
  }
}
