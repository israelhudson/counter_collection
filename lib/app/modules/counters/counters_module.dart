import 'package:counter_collection/app/modules/counters/counters_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:counter_collection/app/modules/counters/counters_page.dart';

class CountersModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CountersController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CountersPage()),
      ];

  static Inject get to => Inject<CountersModule>.of();
}
