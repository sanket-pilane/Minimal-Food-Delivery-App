import 'package:flutter/material.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Sunset Dinner"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      expandedHeight: 320,
      pinned: true,
      floating: false,
      collapsedHeight: 120,
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: child,
        ),
        title: title,
        titlePadding: const EdgeInsets.only(
          top: 0,
          right: 0,
          left: 0,
        ),
        centerTitle: true,
        expandedTitleScale: 1,
      ),
    );
  }
}
