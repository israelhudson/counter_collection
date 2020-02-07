import 'package:counter_collection/app/app_controller.dart';
import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:counter_collection/app/shared/ui_components/widgets_utils.dart';
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
  var controller = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Observer(
          builder: (context) {
            return Text(widget.title);
          }
        )),
        body: Container(
          child: Column(
            children: <Widget>[
              addRemoveButtonsCounters(),
              Expanded(child: CounterListWidget())
            ],
          ),
        ));
  }

  Widget addRemoveButtonsCounters() {
    return Observer(
      builder: (context) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: RaisedButton(
                  elevation: 5,
                  child: Text("Add Counter"),
                  onPressed: () => controller.addToList(CounterModel(0)),
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: RaisedButton(
                elevation: 5,
                disabledColor: Colors.grey[400],
                child: Text("Remove Counter"),
                onPressed: !controller.checkContainsItemsSelected ? null : (){
                  alerDialog(msg: "Deseja excluir os itens selecionados?", context: context,
                              action: () => controller.deleteToList()
                  );
                }
              ),
            )),
          ],
        );
      }
    );
  }

  Observer CounterListWidget() {
    return Observer(builder: (context) {
      return Container(
        child: controller.listItems.isNotEmpty
            ? ListView.builder(
                itemCount: controller.listItems.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[itemCounterWidget(index)],
                  );
                })
            : Center(child: Text("Empty list")),
      );
    });
  }

  Widget itemCounterWidget(int index) {
    return Observer(builder: (context) {
      return Card(
        elevation: 5,
        color: controller.listItems[index].isSelected
            ? Colors.green
            : Colors.white,
        child: ListTile(
            onTap: () {
              controller.listItems[index].setSelected();
            },
            leading: Container(
              child: Text("${controller.listItems[index].counter}",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
              ),
            ),
            isThreeLine: true,
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  tooltip: "Incrementar o contador",
                  onPressed: () => controller.listItems[index].increment(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.minimize),
                  backgroundColor: controller.checkCounterEnabled(index) ? Colors.orange : Colors.grey,
                  elevation: 0,
                  tooltip: "Decrementar o contador",
                  onPressed: () => controller.listItems[index].decrement(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.do_not_disturb),
                  backgroundColor: controller.checkCounterEnabled(index) ? Colors.brown : Colors.grey,
                  elevation: 0,
                  tooltip: "Zerar o contador",
                  onPressed: () => controller.resetCounter(index),
                ),
              ],
            ),),
      );
    });
  }

}
