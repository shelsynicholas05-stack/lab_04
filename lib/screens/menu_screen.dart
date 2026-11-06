import 'package:flutter/material.dart';
import '../pizza_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  Widget _buildCard(BuildContext context, PizzaItem item) {
    return Card(
      color: Colors.orange,
      child: ListTile(
        title: Text(item.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.pushNamed(context, item.route),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          _buildCard(context, vegetableItem),
          _buildCard(context, cheeseItem),
          _buildCard(context, friesItem),
        ],
      ),
    );
  }
}
