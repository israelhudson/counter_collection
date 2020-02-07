// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterModel on _CounterModelBase, Store {
  final _$isOnlySelectedAtom = Atom(name: '_CounterModelBase.isOnlySelected');

  @override
  bool get isOnlySelected {
    _$isOnlySelectedAtom.context.enforceReadPolicy(_$isOnlySelectedAtom);
    _$isOnlySelectedAtom.reportObserved();
    return super.isOnlySelected;
  }

  @override
  set isOnlySelected(bool value) {
    _$isOnlySelectedAtom.context.conditionallyRunInAction(() {
      super.isOnlySelected = value;
      _$isOnlySelectedAtom.reportChanged();
    }, _$isOnlySelectedAtom, name: '${_$isOnlySelectedAtom.name}_set');
  }

  final _$isSelectedAtom = Atom(name: '_CounterModelBase.isSelected');

  @override
  bool get isSelected {
    _$isSelectedAtom.context.enforceReadPolicy(_$isSelectedAtom);
    _$isSelectedAtom.reportObserved();
    return super.isSelected;
  }

  @override
  set isSelected(bool value) {
    _$isSelectedAtom.context.conditionallyRunInAction(() {
      super.isSelected = value;
      _$isSelectedAtom.reportChanged();
    }, _$isSelectedAtom, name: '${_$isSelectedAtom.name}_set');
  }

  final _$counterAtom = Atom(name: '_CounterModelBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$listItemsAtom = Atom(name: '_CounterModelBase.listItems');

  @override
  ObservableList<CounterModel> get listItems {
    _$listItemsAtom.context.enforceReadPolicy(_$listItemsAtom);
    _$listItemsAtom.reportObserved();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<CounterModel> value) {
    _$listItemsAtom.context.conditionallyRunInAction(() {
      super.listItems = value;
      _$listItemsAtom.reportChanged();
    }, _$listItemsAtom, name: '${_$listItemsAtom.name}_set');
  }

  final _$_CounterModelBaseActionController =
      ActionController(name: '_CounterModelBase');

  @override
  dynamic setOnlySelected() {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.setOnlySelected();
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelected() {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.setSelected();
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic increment() {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrement() {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addToList(CounterModel counterModel) {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.addToList(counterModel);
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic seletectOnlyItem(int indexList) {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.seletectOnlyItem(indexList);
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic seletectItem(int indexList) {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.seletectItem(indexList);
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkIfSelectionList() {
    final _$actionInfo = _$_CounterModelBaseActionController.startAction();
    try {
      return super.checkIfSelectionList();
    } finally {
      _$_CounterModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
