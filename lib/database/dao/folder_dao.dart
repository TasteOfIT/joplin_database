import 'package:drift/drift.dart';

import '../database.dart';
import '../utils/uuid_utils.dart';

part 'folder_dao.g.dart';

@DriftAccessor(include: {'queries/folders.drift'})
class FolderDao extends DatabaseAccessor<JoplinDatabase> with _$FolderDaoMixin {
  FolderDao(JoplinDatabase db) : super(db);

  Stream<List<Folder>> getFolders() {
    return allFolders().watch();
  }

  Future<Folder?> getFolder(String id) {
    return queryFolder(id).getSingleOrNull();
  }

  Stream<List<Folder>> foldersIn(String parentId) {
    return queryFolders(parentId).watch();
  }

  Future<String> addFolder(Folder folder) {
    String id = UuidUtils.id();
    return insertFolder(folder.copyWith(id: Value(id))).then(
      (value) => Future.value(id),
      onError: (_) => Future.value(''),
    );
  }

  Future<int> editFolder(String id, String title, int updatedTime) {
    return updateFolder(title, updatedTime, updatedTime, id);
  }

  Future<int> moveToFolder(String id, String parentId, int updatedTime) {
    return moveFolder(parentId, updatedTime, updatedTime, id);
  }

  Future<int> removeFolder(String id) {
    return deleteFolder(id);
  }
}
