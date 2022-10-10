// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_dao.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$FolderDaoMixin on DatabaseAccessor<JoplinDatabase> {
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
  Selectable<Folder> allFolders() {
    return customSelect('SELECT * FROM folders', variables: [], readsFrom: {
      folders,
    }).asyncMap(folders.mapFromRow);
  }

  Selectable<Folder> queryFolder(String? id) {
    return customSelect('SELECT * FROM folders WHERE id = ?1', variables: [
      Variable<String>(id)
    ], readsFrom: {
      folders,
    }).asyncMap(folders.mapFromRow);
  }

  Selectable<Folder> queryFolders(String parentId) {
    return customSelect('SELECT * FROM folders WHERE parent_id = ?1',
        variables: [
          Variable<String>(parentId)
        ],
        readsFrom: {
          folders,
        }).asyncMap(folders.mapFromRow);
  }

  Future<int> insertFolder(Insertable<Folder> folder) {
    var $arrayStartIndex = 1;
    final generatedfolder =
        $writeInsertable(this.folders, folder, startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedfolder.amountOfVariables;
    return customInsert(
      'INSERT INTO folders ${generatedfolder.sql}',
      variables: [...generatedfolder.introducedVariables],
      updates: {folders},
    );
  }

  Future<int> updateFolder(
      String title, int updatedTime, int userUpdatedTime, String? id) {
    return customUpdate(
      'UPDATE folders SET title = ?1, updated_time = ?2, user_updated_time = ?3 WHERE id = ?4',
      variables: [
        Variable<String>(title),
        Variable<int>(updatedTime),
        Variable<int>(userUpdatedTime),
        Variable<String>(id)
      ],
      updates: {folders},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> moveFolder(
      String parentId, int updatedTime, int userUpdatedTime, String? id) {
    return customUpdate(
      'UPDATE folders SET parent_id = ?1, updated_time = ?2, user_updated_time = ?3 WHERE id = ?4',
      variables: [
        Variable<String>(parentId),
        Variable<int>(updatedTime),
        Variable<int>(userUpdatedTime),
        Variable<String>(id)
      ],
      updates: {folders},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> deleteFolder(String? id) {
    return customUpdate(
      'DELETE FROM folders WHERE id = ?1',
      variables: [Variable<String>(id)],
      updates: {folders},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> deleteFolders(String parentId) {
    return customUpdate(
      'DELETE FROM folders WHERE parent_id = ?1',
      variables: [Variable<String>(parentId)],
      updates: {folders},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> cleanOrphans() {
    return customUpdate(
      'DELETE FROM folders WHERE LENGTH(parent_id) > 0 AND parent_id NOT IN (SELECT id FROM folders)',
      variables: [],
      updates: {folders},
      updateKind: UpdateKind.delete,
    );
  }
}
