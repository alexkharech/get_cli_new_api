import 'dart:io';
import 'package:get_cli/common/utils/logger/logger.dart';
import 'package:path/path.dart';

abstract class Sample {
  /// path to create file
  String get path;

  /// content of file
  String get content;

  /// overwrite file
  bool get overwrite;

  /// create file
  Future<void> create() async {
    File file = await File(_replaceAsExpected(path: path));
    if (!await file.exists() || overwrite) {
      await file.create(recursive: true);
      await file.writeAsString(content);
      LogService.success(basename(path) + ' created');
    }
  }

  static String _replaceAsExpected({String path, String replaceChar}) {
    if (path.contains('\\')) {
      if (Platform.isLinux || Platform.isMacOS) {
        return path.replaceAll('\\', '/');
      } else {
        return path;
      }
    } else if (path.contains('/')) {
      if (Platform.isWindows) {
        return path.replaceAll('/', '\\\\');
      } else {
        return path;
      }
    } else {
      return path;
    }
  }
}
