import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'counters_controller.g.dart';

class CountersController = _CountersBase with _$CountersController;

abstract class _CountersBase with Store {
  @observable
  ObservableList<CounterModel> listItems = [
    CounterModel(0)
  ].asObservable();

  @action
  addToList(CounterModel counterModel) => listItems.add(counterModel);

  @action
  seletectItem(int index)=>listItems[index].setSelected();

  @action
  deleteItemsSelected(){
    listItems.forEach((f){
      if(f.isSelected) listItems.remove(f);
    });
  }
}
