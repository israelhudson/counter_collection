import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:counter_collection/app/modules/counters/counters_controller.dart';
import 'package:counter_collection/app/modules/counters/counters_module.dart';

void main() {
  initModule(CountersModule());
  CountersController counters;

  setUp(() {
    counters = CountersModule.to.get<CountersController>();
  });

  group('CountersController Test', () {
    test("First Test", () {
      expect(counters, isInstanceOf<CountersController>());
    });

    test("Set Value", () {
      expect(counters.value, equals(0));
      counters.increment();
      expect(counters.value, equals(1));
    });
  });
}
