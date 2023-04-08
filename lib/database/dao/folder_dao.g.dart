// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_dao.dart';

// ignore_for_file: type=lint
mixin _$FolderDaoMixin on DatabaseAccessor<JoplinDatabase> {
  Folders get folders => attachedDatabase.folders;
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
