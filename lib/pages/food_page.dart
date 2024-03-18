import 'package:flutter/material.dart';
import 'package:minimal_food_app/model/food.dart';

class FoodPage extends StatelessWidget {
  final FoodModel food;
  const FoodPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.asset(food.imagePath)],
      ),
    );
  }
}
