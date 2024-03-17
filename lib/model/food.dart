// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodModel {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final Categories categories;
  List<Addons> availableAddons;

  FoodModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.categories,
    required this.availableAddons,
  });
}

enum Categories {
  burgers,
  salads,
  sides,
  drinks,
  desserts,
}

class Addons {
  String name;
  double price;
  Addons({
    required this.name,
    required this.price,
  });
}
