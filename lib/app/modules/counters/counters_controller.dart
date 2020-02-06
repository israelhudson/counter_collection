import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'counters_controller.g.dart';

class CountersController = _CountersBase with _$CountersController;

abstract class _CountersBase with Store {
  @observable
  ObservableList<CounterModel> listItems = ObservableList<CounterModel>();

  @action
  addToList(CounterModel counterModel){
    listItems.add(counterModel);

    checkIfSelectionList();
  }

  @action
  deleteToList(List<int> list) {
    list.asMap().forEach((i, value){
        listItems.removeAt(i);
    });

    //checkIfSelectionList();
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
      if(f.isSelected)
        countSele++;
    });

    if(countSele == 0)
      listItems[0].isSelected = true;

  }

  @action
  deleteItemsSelected(){
    listItems.forEach((f){
      if(f.isSelected) listItems.remove(f);
    });

    checkIfSelectionList();
  }
}
