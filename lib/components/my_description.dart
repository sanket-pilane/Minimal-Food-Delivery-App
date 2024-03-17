import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var secondaryStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      margin: const EdgeInsets.only(left: 25, bottom: 25, right: 25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.99",
                style: primaryStyle,
              ),
              Text(
                "Delivery Cost",
                style: secondaryStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "20-30 min",
                style: primaryStyle,
              ),
              Text(
                "Delivery Time",
                style: secondaryStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
