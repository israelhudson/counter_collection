// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counters_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountersController on _CountersBase, Store {
  final _$listItemsAtom = Atom(name: '_CountersBase.listItems');

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

  final _$_CountersBaseActionController =
      ActionController(name: '_CountersBase');

  @override
  dynamic addToList(CounterModel counterModel) {
    final _$actionInfo = _$_CountersBaseActionController.startAction();
    try {
      return super.addToList(counterModel);
    } finally {
      _$_CountersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic seletectItem(int index) {
    final _$actionInfo = _$_CountersBaseActionController.startAction();
    try {
      return super.seletectItem(index);
    } finally {
      _$_CountersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteItemsSelected() {
    final _$actionInfo = _$_CountersBaseActionController.startAction();
    try {
      return super.deleteItemsSelected();
    } finally {
      _$_CountersBaseActionController.endAction(_$actionInfo);
    }
  }
}
