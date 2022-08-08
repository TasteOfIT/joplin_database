import 'package:drift/drift.dart';

import '../database.dart';
import '../utils/uuid_utils.dart';

part 'note_dao.g.dart';

@DriftAccessor(include: {'queries/notes.drift'})
class NoteDao extends DatabaseAccessor<JoplinDatabase> with _$NoteDaoMixin {
  NoteDao(JoplinDatabase db) : super(db);

  Stream<List<Note>> getNotes() {
    return allNotes().watch();
  }

  Future<int> addNote(Note note) {
    return insertNote(note.copyWith(id: UuidUtils.id()));
  }

  Future<int> removeNote(String id) {
    return deleteNote(id);
  }
}
