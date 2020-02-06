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

}
