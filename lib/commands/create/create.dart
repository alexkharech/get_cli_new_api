import 'package:get_cli/get_cli.dart';

mixin CreateMixin {
  bool get withOn => GetCli.arguments.length > 3 && GetCli.arguments[3] == 'on';
  String get on => GetCli.arguments[4];
}
