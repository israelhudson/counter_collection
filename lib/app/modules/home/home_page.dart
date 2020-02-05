import 'dart:developer';

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
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: controller.increment,
            child: Text(widget.title)),
      ),
    body: Observer(
      builder: (context) {
        return Container(
          child: ListView.builder(
              itemCount: controller.listItems.length,
              itemBuilder: (context, index){
                CounterModel counter = controller.listItems[index];

                return Text("${counter.counter}");
              }
          ),
        );
      }
    ),
    bottomSheet: Container(
      height: 50,
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.list),
          VerticalDivider(),
          Icon(Icons.settings),
        ],
      ),
    ),
    );
  }
}
