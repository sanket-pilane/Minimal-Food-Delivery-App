import 'package:flutter/material.dart';
import 'package:minimal_food_app/model/food.dart';

class MyTapBar extends StatelessWidget {
  final TabController controller;
  const MyTapBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    List<Tab> buildCategoris() {
      return Categories.values.map((c) {
        return Tab(
          text: c.toString().split(".").last,
        );
      }).toList();
    }

    return Container(
      child: TabBar(
        controller: controller,
        tabs: buildCategoris(),
      ),
    );
  }
}
