import 'package:get_cli/core/sample.dart';

class GenerateLocalesSample extends Sample {
  final String translationsKeys;
  final String keys;
  final String locales;

  GenerateLocalesSample(this.translationsKeys, this.keys, this.locales);

  @override
  String get path => 'lib/generated/locales.g.dart';

  @override
  bool get overwrite => true;

  @override
  String get content {
    return '''
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart
abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    $translationsKeys
  };
}
abstract class LocaleKeys {
${keys}
}
abstract class Locales {
  ${locales}
}
''';
  }
}
