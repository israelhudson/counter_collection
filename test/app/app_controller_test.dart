import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:counter_collection/app/app_controller.dart';
import 'package:counter_collection/app/app_module.dart';

void main() {
  initModule(AppModule());
  AppController app;

  setUp(() {
    app = AppModule.to.get<AppController>();
  });

  group('AppController Test', () {
    test("First Test", () {
      expect(app, isInstanceOf<AppController>());
    });

    test("Testa a adição de um contador", () {
      app.listItems.add(CounterModel(0));
      expect(app.listItems.length, equals(1));
      expect(app.listItems[0].counter, equals(0));
    });

    test("Testa o incremento de um contador", () {
      app.listItems[0].counter++;
      expect(app.listItems[0].counter, equals(1));
    });

    test("Testa o decremento de um contador", () {
      app.listItems[0].counter--;
      expect(app.listItems[0].counter, equals(0));
    });

    test("Testa o reset de um contador", () {
      app.listItems[0].counter += 5;
      app.resetCounter(0);// o Zero é o indice da lista
      expect(app.listItems[0].counter, equals(0));
    });

    test("Testa o excluir varios itens da lista", () {
      app.listItems.clear();
      app.listItems.add(CounterModel(0));
      app.listItems.add(CounterModel(0));
      app.listItems.add(CounterModel(0));
      app.listItems.add(CounterModel(0));
      app.listItems[0].setSelected();
      app.listItems[1].setSelected();
      app.deleteToList();
      expect(app.listItems.length, 2);
    });
  });
}
