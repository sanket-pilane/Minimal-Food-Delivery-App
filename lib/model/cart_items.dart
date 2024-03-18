// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:minimal_food_app/model/food.dart';

class CartItem {
  final FoodModel food;
  List<Addons> addons;
  int quantity;
  CartItem({
    required this.food,
    required this.addons,
    this.quantity = 1,
  });

  double get totalPrice {
    double addonPrice = addons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonPrice) * quantity;
  }
}
