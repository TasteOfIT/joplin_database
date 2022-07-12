import 'package:drift/drift.dart';

import '../database.dart';

part 'folder_dao.g.dart';

@DriftAccessor(include: {'queries/folders.drift'})
class FolderDao extends DatabaseAccessor<JoplinDatabase> with _$FolderDaoMixin {
  FolderDao(JoplinDatabase db) : super(db);

  Stream<List<Folder>> getFolders() {
    return allFolders().watch();
  }

  Future<int> createFolder(Folder folder) {
    return addFolder(folder);
  }
}
