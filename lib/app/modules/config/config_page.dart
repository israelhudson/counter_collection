import 'package:counter_collection/app/modules/counters/counters_controller.dart';
import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigPage extends StatefulWidget {
  final String title;
  const ConfigPage({Key key, this.title = "Config"}) : super(key: key);

  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  var controller = Modular.get<CountersController>();

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
        body: CounterListWidget()
    );
  }

  Observer CounterListWidget() {
    return Observer(
        builder: (context) {
          return Container(
            child: ListView.builder(
                itemCount: controller.listItems.length,
                itemBuilder: (context, index){

                  return Column(
                    children: <Widget>[
                      itemCounterWidget(index)
                    ],
                  );
                }
            ),
          );
        }
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
