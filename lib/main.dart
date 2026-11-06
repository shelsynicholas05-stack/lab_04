import 'package:flutter/material.dart';
import 'pizza_item.dart';
import 'screens/menu_screen.dart';
import 'screens/detail_screen.dart';

void main() => runApp(const PizzaStoreApp());

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      debugShowCheckedModeBanner: false,
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const MenuScreen(),
        '/vegetable': (context) => const DetailScreen(item: vegetableItem),
        '/cheese': (context) => const DetailScreen(item: cheeseItem),
        '/fries': (context) => const DetailScreen(item: friesItem),
      },
    );
  }
}
