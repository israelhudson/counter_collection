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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: ()=>controller.addToList(CounterModel(0)),
            child: Text(widget.title)),
        leading: IconButton(icon: Icon(Icons.restore_from_trash),
        onPressed: ()=>controller.deleteItemsSelected(),),
      ),
    body: Observer(
      builder: (context) {
        return Container(
          child: ListView.builder(
              itemCount: controller.listItems.length,
              itemBuilder: (context, index){

                return itemCounterWidget(index);
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

  Widget itemCounterWidget(int index){
    return Observer(
      builder: (context) {
        return Card(
          color: controller.listItems[index].isSelected ? Colors.green : Colors.white,
          child: ListTile(
            title: Text("${controller.listItems[index].counter}"),
            //selected: controller.listItems[index].isSelected,
            isThreeLine: true,
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(icon: Icon(Icons.add), onPressed: (){
                  controller.listItems[index].increment();

                },),
                IconButton(icon: Icon(Icons.minimize), onPressed: (){
                  controller.listItems[index].counter--;

                },),
              ],
            ),
            onTap: controller.listItems[index].setSelected
          ),
        );
      }
    );
  }
}
