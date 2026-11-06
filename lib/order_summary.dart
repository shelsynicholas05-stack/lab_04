import 'package:flutter/material.dart';
import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double unitPrice;

  const OrderSummaryScreen({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  @override
  Widget build(BuildContext context) {
    final total = orderTotal(unitPrice, quantity);
    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item: $itemName'),
            Text('Quantity: $quantity'),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
