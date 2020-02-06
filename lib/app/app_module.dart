import 'package:counter_collection/app/app_controller.dart';
import 'package:counter_collection/app/modules/config/config_controller.dart';
import 'package:counter_collection/app/modules/config/config_module.dart';
import 'package:counter_collection/app/modules/config/config_page.dart';
import 'package:counter_collection/app/modules/counters/counters_controller.dart';
import 'package:counter_collection/app/modules/counters/counters_module.dart';
import 'package:counter_collection/app/modules/counters/counters_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:counter_collection/app/app_widget.dart';
import 'package:counter_collection/app/modules/home/home_module.dart';
import 'package:counter_collection/app/modules/config/config_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
