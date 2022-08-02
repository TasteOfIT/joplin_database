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
    }).map(folders.mapFromRow);
  }

  Future<int> insertFolder(Insertable<Folder> folder) {
    final generatedfolder = $writeInsertable(this.folders, folder);
    return customInsert(
      'INSERT INTO folders ${generatedfolder.sql}',
      variables: [...generatedfolder.introducedVariables],
      updates: {folders},
    );
  }

  Future<int> deleteFolder(String? id) {
    return customUpdate(
      'DELETE FROM folders WHERE id = :id',
      variables: [Variable<String?>(id)],
      updates: {folders},
      updateKind: UpdateKind.delete,
    );
  }
}
