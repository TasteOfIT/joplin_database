import 'package:uuid/uuid.dart';

class UuidUtils {
  static const uuid = Uuid();

  static String id() {
    return uuid.v4().replaceAll('-', '');
  }
}
