import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {

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
