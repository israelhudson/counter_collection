import 'package:counter_collection/app/modules/config/config_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:counter_collection/app/modules/config/config_page.dart';

class ConfigModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConfigController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ConfigPage()),
      ];

  static Inject get to => Inject<ConfigModule>.of();
}
