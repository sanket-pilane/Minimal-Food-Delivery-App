import 'package:flutter/material.dart';
import 'package:minimal_food_app/model/restaunrunt.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 25.0, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          children: [
            const Text("Thank you for Ordering!!"),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  )),
              child: Consumer<Restaunrant>(
                builder: (context, value, child) =>
                    Text(value.displayReceipt()),
              ),
            ),
            const Text("Estimated delivery time is : 4:01 PM")
          ],
        ),
      ),
    );
  }
}
