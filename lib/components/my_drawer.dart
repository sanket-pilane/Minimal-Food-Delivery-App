import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_food_app/components/drawer_tile.dart';
import 'package:minimal_food_app/pages/setting_page.dart';
import 'package:minimal_food_app/services/auth/firebase_services.dart';

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Column(
                children: [
                  DrawerTile(
                    text: "H O M E ",
                    icon: Icons.home,
                    onTap: () => Navigator.pop(context),
                  ),
                  DrawerTile(
                    text: "S E T T I N G ",
                    icon: Icons.settings,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  DrawerTile(
                    text: "L O G O U T ",
                    icon: Icons.logout,
                    onTap: () {
                      final authService = FirebaseServices();
                      authService.signOut();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
