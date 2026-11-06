import 'package:flutter/material.dart';
import 'order_summary.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoHome(),
    ));

class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
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
          child: const Text('View order summary'),
        ),
      ),
    );
  }
}
