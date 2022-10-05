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

  Future<String> addNote(Note note) {
    String id = UuidUtils.id();
    return insertNote(note.copyWith(id: Value(id))).then(
      (value) => Future.value(id),
      onError: (_) => Future.value(''),
    );
  }

  Future<int> editTitle(String id, String title, int updatedTime) {
    return renameNote(title, updatedTime, updatedTime, id);
  }

  Future<int> editContent(String id, String body, int updatedTime) {
    return updateContent(body, updatedTime, updatedTime, id);
  }

  Future<int> moveToFolder(String id, String parentId, int updatedTime) {
    return moveNote(parentId, updatedTime, updatedTime, id);
  }

  Future<int> removeNote(String id) {
    return deleteNote(id);
  }
}
