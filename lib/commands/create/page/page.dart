import 'package:get_cli/commands/create/create.dart';
import 'package:get_cli/core/command.dart';

class CreatePageCommand extends Command with CreateMixin {
  @override
  Future<void> execute() async {
    // CreateViewCommand().execute();
    // CreateBindingCommand().execute();
    // CreateControllerCommand().execute();
    // ...

    // from CreateMixin
    // if (withOn) {
    //   print(on == 'home');
    // }

    // TODO: implement validate
    throw UnimplementedError();
  }

  @override
  String get hint => 'Create a page';

  @override
  bool validate() {
    // TODO: implement validate
    throw UnimplementedError();
  }
}
