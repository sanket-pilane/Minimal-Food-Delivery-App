import 'package:flutter/material.dart';
import 'package:minimal_food_app/components/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          DrawerTile(
            text: "H O M E ",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          DrawerTile(
            text: "S E T T I N G ",
            icon: Icons.settings,
            onTap: () {},
          ),
          const Spacer(),
          DrawerTile(
            text: "L O G O U T ",
            icon: Icons.logout,
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
