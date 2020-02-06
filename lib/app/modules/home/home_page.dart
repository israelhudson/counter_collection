import 'dart:developer';

import 'package:counter_collection/app/modules/config/config_page.dart';
import 'package:counter_collection/app/modules/counters/counters_page.dart';
import 'package:counter_collection/app/modules/home/home_controller.dart';
import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            CountersPage(),
            ConfigPage(),
          ],
        ),
        bottomNavigationBar: new TabBar(
          tabs: [
            Tab(
              text: "Counters",
            ),

            Tab(
              text: "Config",
            ),
          ],
          //labelColor: Colors.indigoAccent,
          //unselectedLabelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.white70,
        ),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
