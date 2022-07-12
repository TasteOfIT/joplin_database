import 'folder_dao.dart';
import 'note_dao.dart';

export 'folder_dao.dart';
export 'note_dao.dart';

class Daos {
  static const List<Type> all = [
    FolderDao,
    NoteDao,
  ];
}
