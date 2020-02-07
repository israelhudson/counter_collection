import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  @observable
  ObservableList<CounterModel> listItems = ObservableList<CounterModel>();

  @action
  addToList(CounterModel counterModel){
    listItems.add(counterModel);

    checkIfSelectionList();
  }

  @action
  deleteToList(){
    listItems.removeWhere((CounterModel cm)=>cm.isSelected == true);

    checkIfSelectionList();
  }

  @action
  seletectOnlyItem(int indexList){
    listItems.asMap().forEach((index, value){
      if(indexList != index)
        listItems[index].isOnlySelected = false;
      else
        listItems[index].isOnlySelected = true;
    });
  }

  @action
  seletectItem(int indexList){
    listItems.asMap().forEach((index, value){
      if(indexList != index)
        listItems[index].isSelected = false;
      else
        listItems[index].isSelected = true;
    });
  }

  @action
  checkIfSelectionList(){
    int countSele = 0;

    listItems.forEach((f){
      if(f.isOnlySelected)
        countSele++;
    });

    if(countSele == 0)
      listItems[0].isOnlySelected = true;

  }

  @action
  deleteItemsSelected(){
    listItems.forEach((f){
      if(f.isOnlySelected) listItems.remove(f);
    });

    checkIfSelectionList();
  }
}
