import 'package:counter_collection/app/modules/counters/counters_controller.dart';
import 'package:counter_collection/app/modules/counters/counters_page.dart';
import 'package:counter_collection/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:counter_collection/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => CountersController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/counterlist', child: (_, args) => CountersPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
