import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('Menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  testWidgets('Tapping a card opens its detail screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    expect(find.text('Classic mozzarella pizza with a golden, bubbly top.'),
        findsOneWidget);
  });

  testWidgets('Back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    expect(find.text('Pizza Store Menu'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });
}
