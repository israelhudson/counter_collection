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
  decrement(){
    if(counter == 0)
      counter--;
    else
      return;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is _CounterModelBase &&
              runtimeType == other.runtimeType &&
              isSelected == other.isSelected &&
              counter == other.counter;

  @override
  int get hashCode =>
      isSelected.hashCode ^
      counter.hashCode;




//  @observable
//  ObservableList<CounterModel> listItems = ObservableList<CounterModel>();


}
