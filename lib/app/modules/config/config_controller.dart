import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'config_controller.g.dart';

class ConfigController = _ConfigBase with _$ConfigController;

abstract class _ConfigBase with Store {
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
