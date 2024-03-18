import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_food_app/components/qunatity_selector.dart';
import 'package:minimal_food_app/model/cart_items.dart';
import 'package:minimal_food_app/model/restaunrunt.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final CartItem cartItem;
  const CartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaunrant>(
      builder: (context, value, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text("\$${cartItem.food.price}")
                    ],
                  ),
                  const Spacer(),
                  QuantitySelector(
                    food: cartItem.food,
                    quantity: cartItem.quantity,
                    onDecrement: () {
                      value.removeFromCart(cartItem);
                    },
                    onIncrement: () {
                      value.addToCart(cartItem.food, cartItem.addons);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: cartItem.addons.isEmpty ? 0 : 60,
              child: ListView(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                scrollDirection: Axis.horizontal,
                children: cartItem.addons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: FilterChip(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                          shape: StadiumBorder(
                              side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                          label: Row(
                            children: [
                              Text(addon.name),
                              Text("(\$${addon.price.toString()})"),
                            ],
                          ),
                          onSelected: (value) {},
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
