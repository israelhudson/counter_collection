// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppBase, Store {
  final _$listItemsAtom = Atom(name: '_AppBase.listItems');

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

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  dynamic addToList(CounterModel counterModel) {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.addToList(counterModel);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteToList() {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.deleteToList();
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic seletectOnlyItem(int indexList) {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.seletectOnlyItem(indexList);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic seletectItem(int indexList) {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.seletectItem(indexList);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkIfSelectionList() {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.checkIfSelectionList();
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteItemsSelected() {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.deleteItemsSelected();
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }
}
