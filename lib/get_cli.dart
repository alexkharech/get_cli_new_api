import 'package:get_cli/commands.dart';
import 'package:get_cli/commands/help/help.dart';
import 'package:get_cli/common/utils/logger/logger.dart';
import 'package:get_cli/core/command.dart';

class GetCli {
  final List<String> _arguments;

  GetCli(this._arguments) {
    _instance = this;
  }

  static GetCli _instance;
  static GetCli get to => _instance;

  static List<String> get arguments => to._arguments;

  Command findCommand() => _findCommand(0, commands);

  Command _findCommand(int currentIndex, Map commands) {
    try {
      final currentArgument = arguments[currentIndex];
      final command = commands[currentArgument];
      if (command == null) throw Exception();
      if (command is Function) return command();
      return _findCommand(currentIndex += 1, command);
    } on RangeError catch (_) {
      // command line arguments is empty
      return HelpCommand();
    } catch (e) {
      // command not found
      LogService.error('command not found');
      return HelpCommand();
    }
  }
}
