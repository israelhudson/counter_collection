import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  int value = 0;

  @observable
  CounterModel counterModel = CounterModel(0,0);

  @action
  void increment() {
    value++;
    counterModel.counter++;
    counterModel.id++;

    listItems.add(CounterModel(value, value));
  }

  @observable
  ObservableList<CounterModel> listItems = [
    CounterModel(0,0)
  ].asObservable();

}
