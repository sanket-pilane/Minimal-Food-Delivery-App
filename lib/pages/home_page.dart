import 'package:flutter/material.dart';
import 'package:minimal_food_app/components/food_tile.dart';
import 'package:minimal_food_app/components/my_description.dart';
import 'package:minimal_food_app/components/my_drawer.dart';
import 'package:minimal_food_app/components/my_location.dart';
import 'package:minimal_food_app/components/my_tapbar.dart';
import 'package:minimal_food_app/components/silver_appbar.dart';
import 'package:minimal_food_app/model/food.dart';
import 'package:minimal_food_app/model/restaunrunt.dart';
import 'package:provider/provider.dart';

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
    _tabController =
        TabController(length: Categories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<FoodModel> _filterCategoris(Categories c, List<FoodModel> fullList) {
    return fullList.where((food) => food.categories == c).toList();
  }

  List<Widget> getFoodInThisCategory(List<FoodModel> fullMenu) {
    return Categories.values.map((c) {
      List<FoodModel> categoryList = _filterCategoris(c, fullMenu);
      return ListView.builder(
        itemCount: categoryList.length,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categoryList[index];
          return FoodTile(food: food, onTap: () {});
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
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
        body: Consumer<Restaunrant>(
          builder: (context, value, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(value.menu)),
        ),
      ),
    );
  }
}
