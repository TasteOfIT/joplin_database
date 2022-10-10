// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dao.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$NoteDaoMixin on DatabaseAccessor<JoplinDatabase> {
  Folders get folders => attachedDatabase.folders;
  Tags get tags => attachedDatabase.tags;
  NoteTags get noteTags => attachedDatabase.noteTags;
  SyncItems get syncItems => attachedDatabase.syncItems;
  DeletedItems get deletedItems => attachedDatabase.deletedItems;
  Alarms get alarms => attachedDatabase.alarms;
  ItemChanges get itemChanges => attachedDatabase.itemChanges;
  NoteResources get noteResources => attachedDatabase.noteResources;
  ResourceLocalStates get resourceLocalStates =>
      attachedDatabase.resourceLocalStates;
  Revisions get revisions => attachedDatabase.revisions;
  ResourcesToDownload get resourcesToDownload =>
      attachedDatabase.resourcesToDownload;
  KeyValues get keyValues => attachedDatabase.keyValues;
  Resources get resources => attachedDatabase.resources;
  NotesNormalized get notesNormalized => attachedDatabase.notesNormalized;
  NotesFts get notesFts => attachedDatabase.notesFts;
  Notes get notes => attachedDatabase.notes;
  TagsWithNoteCount get tagsWithNoteCount => attachedDatabase.tagsWithNoteCount;
  TableFields get tableFields => attachedDatabase.tableFields;
  Version get version => attachedDatabase.version;
  Settings get settings => attachedDatabase.settings;
  MasterKeys get masterKeys => attachedDatabase.masterKeys;
  Migrations get migrations => attachedDatabase.migrations;
  Selectable<Note> allNotes() {
    return customSelect('SELECT * FROM notes', variables: [], readsFrom: {
      notes,
    }).asyncMap(notes.mapFromRow);
  }

  Selectable<Note> queryNote(String? id) {
    return customSelect('SELECT * FROM notes WHERE id = ?1', variables: [
      Variable<String>(id)
    ], readsFrom: {
      notes,
    }).asyncMap(notes.mapFromRow);
  }

  Selectable<Note> queryNotes(String parentId) {
    return customSelect('SELECT * FROM notes WHERE parent_id = ?1', variables: [
      Variable<String>(parentId)
    ], readsFrom: {
      notes,
    }).asyncMap(notes.mapFromRow);
  }

  Future<int> insertNote(Insertable<Note> note) {
    var $arrayStartIndex = 1;
    final generatednote =
        $writeInsertable(this.notes, note, startIndex: $arrayStartIndex);
    $arrayStartIndex += generatednote.amountOfVariables;
    return customInsert(
      'INSERT INTO notes ${generatednote.sql}',
      variables: [...generatednote.introducedVariables],
      updates: {notes},
    );
  }

  Future<int> renameNote(
      String title, int updatedTime, int userUpdatedTime, String? id) {
    return customUpdate(
      'UPDATE notes SET title = ?1, updated_time = ?2, user_updated_time = ?3 WHERE id = ?4',
      variables: [
        Variable<String>(title),
        Variable<int>(updatedTime),
        Variable<int>(userUpdatedTime),
        Variable<String>(id)
      ],
      updates: {notes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> updateContent(
      String body, int updatedTime, int userUpdatedTime, String? id) {
    return customUpdate(
      'UPDATE notes SET body = ?1, updated_time = ?2, user_updated_time = ?3 WHERE id = ?4',
      variables: [
        Variable<String>(body),
        Variable<int>(updatedTime),
        Variable<int>(userUpdatedTime),
        Variable<String>(id)
      ],
      updates: {notes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> moveNote(
      String parentId, int updatedTime, int userUpdatedTime, String? id) {
    return customUpdate(
      'UPDATE notes SET parent_id = ?1, updated_time = ?2, user_updated_time = ?3 WHERE id = ?4',
      variables: [
        Variable<String>(parentId),
        Variable<int>(updatedTime),
        Variable<int>(userUpdatedTime),
        Variable<String>(id)
      ],
      updates: {notes},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> deleteNote(String? id) {
    return customUpdate(
      'DELETE FROM notes WHERE id = ?1',
      variables: [Variable<String>(id)],
      updates: {notes},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> deleteNotes(String parentId) {
    return customUpdate(
      'DELETE FROM notes WHERE parent_id = ?1',
      variables: [Variable<String>(parentId)],
      updates: {notes},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> cleanOrphans() {
    return customUpdate(
      'DELETE FROM notes WHERE LENGTH(parent_id) > 0 AND parent_id NOT IN (SELECT id FROM folders)',
      variables: [],
      updates: {notes},
      updateKind: UpdateKind.delete,
    );
  }
}
