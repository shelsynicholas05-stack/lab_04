class PizzaItem {
  final String name;
  final String image;
  final String description;
  final String route;

  const PizzaItem({
    required this.name,
    required this.image,
    required this.description,
    required this.route,
  });
}

const vegetableItem = PizzaItem(
  name: 'Vegetable Pizza',
  image: 'assets/images/vegetable_pizza.jpg',
  description: 'Fresh veggies on a crispy crust with tomato sauce.',
  route: '/vegetable',
);

const cheeseItem = PizzaItem(
  name: 'Cheese Pizza',
  image: 'assets/images/cheese_pizza.jpg',
  description: 'Classic mozzarella pizza with a golden, bubbly top.',
  route: '/cheese',
);

const friesItem = PizzaItem(
  name: 'Box of Fries',
  image: 'assets/images/fries.jpg',
  description: 'Hot, crispy golden fries served in a box.',
  route: '/fries',
);
