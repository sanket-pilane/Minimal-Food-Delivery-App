import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_food_app/components/cart_tile.dart';
import 'package:minimal_food_app/components/my_botton.dart';
import 'package:minimal_food_app/model/restaunrunt.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaunrant>(
      builder: (context, value, child) {
        final userCart = value.cart;

        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text(
                            "Are you sure you want to clear the cart?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                value.clearCart();
                              },
                              child: const Text("Yes"))
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
            title: const Text("Cart "),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.primary,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text("Cart is Empty")))
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];
                                return CartTile(cartItem: cartItem);
                              },
                            ),
                          )
                  ],
                ),
              ),
              userCart.isEmpty
                  ? const SizedBox()
                  : MyButton(onTap: () {}, text: "Go to Checkout"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
