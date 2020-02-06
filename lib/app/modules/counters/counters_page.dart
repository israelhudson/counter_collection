import 'package:counter_collection/app/modules/counters/counters_controller.dart';
import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CountersPage extends StatefulWidget {
  final String title;
  const CountersPage({Key key, this.title = "Counters"}) : super(key: key);

  @override
  _CountersPageState createState() => _CountersPageState();
}

class _CountersPageState extends State<CountersPage> {
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
            padding: EdgeInsets.all(10),
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
            color: controller.listItems[index].isSelected ? Colors.white : Colors.grey,
            child: ListTile(
                //enabled: controller.listItems[index].isSelected ? true : false,
                title: Text("Counter ${index+1}",style: TextStyle(fontSize: 26)),
                selected: controller.listItems[index].isSelected,
                subtitle: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("${controller.listItems[index].counter}", style: TextStyle(fontSize: 66),),
                ),
                onTap: ()=>controller.seletectItem(index)
            ),
          );
        }
    );
  }
}
