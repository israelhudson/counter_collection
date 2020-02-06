import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:counter_collection/app/modules/counters/counters_page.dart';

main() {
  testWidgets('CountersPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(CountersPage(title: 'Counters')));
    final titleFinder = find.text('Counters');
    expect(titleFinder, findsOneWidget);
  });
}
