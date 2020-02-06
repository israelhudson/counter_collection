import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:counter_collection/app/modules/config/config_page.dart';

main() {
  testWidgets('ConfigPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ConfigPage(title: 'Config')));
    final titleFinder = find.text('Config');
    expect(titleFinder, findsOneWidget);
  });
}
