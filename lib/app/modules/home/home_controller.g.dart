// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$testeAtom = Atom(name: '_HomeBase.teste');

  @override
  String get teste {
    _$testeAtom.context.enforceReadPolicy(_$testeAtom);
    _$testeAtom.reportObserved();
    return super.teste;
  }

  @override
  set teste(String value) {
    _$testeAtom.context.conditionallyRunInAction(() {
      super.teste = value;
      _$testeAtom.reportChanged();
    }, _$testeAtom, name: '${_$testeAtom.name}_set');
  }

  final _$listItemsAtom = Atom(name: '_HomeBase.listItems');

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

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic addToList(CounterModel counterModel) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.addToList(counterModel);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic seletectItem(int index) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.seletectItem(index);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteItemsSelected() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.deleteItemsSelected();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
