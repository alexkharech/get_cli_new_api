import 'package:ansicolor/ansicolor.dart';

class LogService {
  static final AnsiPen _penError = AnsiPen()..red(bold: true);
  static final AnsiPen _penSuccess = AnsiPen()..green(bold: true);
  static final AnsiPen _penInfo = AnsiPen()..yellow(bold: true);

  static final AnsiPen code = AnsiPen()
    ..black(bold: false, bg: true)
    ..white();

  static final AnsiPen codeBold = AnsiPen()
    ..black(bold: false, bg: true)
    ..yellow(bold: true);

//  static var _errorWrapper = '_' * 40;
  static void error(String msg) {
    const sep = '\n';
    // to check: ⚠ ❌✖✕
    msg = '✖ ' + _penError(msg.trim());
    msg = sep + msg + sep;
    print(msg);
  }

  static void success(String msg) {
    print('✓ ' + _penSuccess(msg));
  }

  static void info(String msg, [bool trim = false, bool newLines = true]) {
    final sep = newLines ? '\n' : '';
    if (trim) msg = msg.trim();
    msg = _penInfo(msg);
    msg = sep + msg + sep;
    print(msg);
  }
}
