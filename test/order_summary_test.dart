import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('Order summary shows item, quantity and total RM 25.00',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: OrderSummaryScreen(
        itemName: 'Cheese Pizza',
        quantity: 2,
        unitPrice: 12.50,
      ),
    ));

    expect(find.text('Item: Cheese Pizza'), findsOneWidget);
    expect(find.text('Quantity: 2'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
  });

  testWidgets('Back button returns to the previous screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const OrderSummaryScreen(
                  itemName: 'Cheese Pizza',
                  quantity: 2,
                  unitPrice: 12.50,
                ),
              ),
            ),
            child: const Text('Open'),
          ),
        ),
      ),
    ));

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Open'), findsOneWidget);
  });
}
