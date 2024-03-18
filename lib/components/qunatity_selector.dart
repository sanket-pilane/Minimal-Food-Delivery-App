import 'package:flutter/material.dart';
import 'package:minimal_food_app/model/cart_items.dart';
import 'package:minimal_food_app/model/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final FoodModel food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector(
      {super.key,
      required this.food,
      required this.quantity,
      required this.onDecrement,
      required this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  quantity.toString(),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
