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

  Future<int> addFolder(Folder folder) {
    return insertFolder(folder.copyWith(id: Value(UuidUtils.id())));
  }

  Future<int> editFolder(String id, String title, int updatedTime) {
    return updateFolder(title, updatedTime, updatedTime, id);
  }

  Future<int> removeFolder(String id) {
    return deleteFolder(id);
  }
}
