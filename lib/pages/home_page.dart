import 'package:flutter/material.dart';
import 'package:minimal_food_app/components/my_description.dart';
import 'package:minimal_food_app/components/my_drawer.dart';
import 'package:minimal_food_app/components/my_location.dart';
import 'package:minimal_food_app/components/my_tapbar.dart';
import 'package:minimal_food_app/components/silver_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTapBar(
              controller: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  endIndent: 25,
                  indent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const CurrentLocation(),
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("first "),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("Second "),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text("Third "),
            )
          ],
        ),
      ),
    );
  }
}
