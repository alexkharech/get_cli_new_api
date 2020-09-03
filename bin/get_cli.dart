import 'package:get_cli/get_cli.dart';

Future<void> main(List<String> arguments) async {
  final command = GetCli(arguments).findCommand();
  if (command != null && command.validate()) {
    await command.execute();
  }
}
