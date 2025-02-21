import 'package:flutter/material.dart';
import 'coffee_details_screen.dart';

class CoffeeSelectionScreen extends StatelessWidget {
  const CoffeeSelectionScreen({super.key});

  final List<Map<String, dynamic>> coffeeList = const [
    {
      "name": "Espresso",
      "image": "assets/espresso.png",
      "description": "Strong, black coffee made by forcing steam through ground coffee beans.",
      "price": "\$2.50"
    },
    {
      "name": "Cappuccino",
      "image": "assets/cappuccino.png",
      "description": "Espresso-based drink topped with steamed milk foam.",
      "price": "\$3.00"
    },
    {
      "name": "Latte",
      "image": "assets/latte.png",
      "description": "Creamy espresso-based drink with steamed milk.",
      "price": "\$3.50"
    },
    {
      "name": "Americano",
      "image": "assets/americano.png",
      "description": "Espresso diluted with hot water for a lighter taste.",
      "price": "\$2.75"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Your Coffee")),
      body: GridView.builder(
        padding: const EdgeInsets.all(12.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          final coffee = coffeeList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CoffeeDetailsScreen(coffee: coffee),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: coffee["name"],
                    child: Image.asset(coffee["image"], width: 80, height: 80),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    coffee["name"],
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    coffee["price"],
                    style: const TextStyle(fontSize: 16, color: Colors.brown),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
