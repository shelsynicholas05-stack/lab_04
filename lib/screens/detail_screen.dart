import 'package:flutter/material.dart';
import '../pizza_item.dart';

class DetailScreen extends StatelessWidget {
  final PizzaItem item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              item.image,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) =>
    const Icon(Icons.image_not_supported, size: 100),
            ),
            const SizedBox(height: 16),
            Text(item.name,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(item.description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}