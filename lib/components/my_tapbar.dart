import 'package:flutter/material.dart';

class MyTapBar extends StatelessWidget {
  final TabController controller;
  const MyTapBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: controller,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.settings),
          ),
          Tab(
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
