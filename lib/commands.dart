import 'package:get_cli/commands/create/page/page.dart';
import 'package:get_cli/commands/generate/locales/locales.dart';
import 'package:get_cli/commands/help/help.dart';
import 'package:get_cli/commands/version/version.dart';

final commands = {
  'create': {
    'page': () => CreatePageCommand(),
  },
  'generate': {
    'locales': () => GenerateLocalesCommand(),
  },
  'help': () => HelpCommand(),
  'version': () => VersionCommand(),
};
