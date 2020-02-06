import 'package:mobx/mobx.dart';

part 'counter_model.g.dart';

class CounterModel = _CounterModelBase with _$CounterModel;

abstract class _CounterModelBase with Store {
  _CounterModelBase(this.counter);

  @observable
  bool isSelected = false;

  @observable
  int counter = 0;

  @action
  setSelected () => isSelected = !isSelected;

  @action
  increment() => counter++;

  @action
  decrement() => counter--;

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
