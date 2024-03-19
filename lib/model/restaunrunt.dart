import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:minimal_food_app/model/cart_items.dart';
import 'package:minimal_food_app/model/food.dart';
import 'package:minimal_food_app/utils/constants.dart';

class Restaunrant extends ChangeNotifier {
  final List<FoodModel> _menu = [
    // Burgers
    FoodModel(
      name: "Classic Burger",
      description:
          "A juicy all-beef patty nestled between crisp lettuce, a vibrant tomato slice, and zesty onions, all drizzled with our signature sauce on a toasted sesame seed bun. A timeless favorite for a reason!",
      imagePath: burger1,
      price: 9.44,
      categories: Categories.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 1.22),
        Addons(name: "Bacon", price: 1.99),
      ],
    ),
    FoodModel(
      name: "Cheeseburger",
      description:
          "A delicious all-beef patty layered with melted cheddar cheese, crisp lettuce, a vibrant tomato slice, and zesty onions, drizzled with our special sauce on a toasted sesame seed bun. A classic combination that never disappoints!",
      imagePath: burger2,
      price: 10.22,
      categories: Categories.burgers,
      availableAddons: [
        Addons(name: "Onion Rings", price: 2.49),
        Addons(name: "French Fries (Large)", price: 1.99),
      ],
    ),
    FoodModel(
      name: "BBQ Bacon Burger",
      description:
          "Experience a taste explosion with our BBQ Bacon Burger! A juicy all-beef patty smothered in our tangy BBQ sauce, topped with crispy bacon, melty cheddar cheese, crisp lettuce, a vibrant tomato slice, and zesty onions. It's a flavor fiesta in every bite!",
      imagePath: burger3,
      price: 11.99,
      categories: Categories.burgers,
      availableAddons: [
        Addons(name: "Jalapenos", price: 0.79),
        Addons(name: "Double Patty", price: 2.49),
      ],
    ),
    FoodModel(
      name: "Mushroom Swiss Burger",
      description:
          "For a twist on the classic, try our Mushroom Swiss Burger! A juicy all-beef patty layered with savory sauteed mushrooms, melted Swiss cheese, crisp lettuce, a vibrant tomato slice, and zesty onions on a toasted sesame seed bun. A delightful combination for burger connoisseurs!",
      imagePath: burger4,
      price: 10.77,
      categories: Categories.burgers,
      availableAddons: [
        Addons(name: "Guacamole", price: 1.99),
        Addons(name: "Onion Rings (Large)", price: 3.49),
      ],
    ),
    FoodModel(
      name: "Veggie Burger",
      description:
          "Looking for a plant-based option? Our Veggie Burger is here! A delicious veggie patty made with a blend of vegetables and grains, topped with crisp lettuce, a vibrant tomato slice, zesty onions, and our signature sauce on a toasted sesame seed bun. A satisfying and flavorful choice!",
      imagePath: burger5,
      price: 9.99,
      categories: Categories.burgers,
      availableAddons: [
        Addons(name: "Avocado", price: 1.49),
        Addons(name: "Sweet Potato Fries", price: 2.29),
      ],
    ),

    FoodModel(
      name: "Caesar Salad",
      description:
          "A classic and refreshing salad featuring crisp romaine lettuce tossed with our creamy Caesar dressing, croutons, and grated Parmesan cheese. A timeless choice for a light and flavorful meal.",
      imagePath: salads1,
      price: 8.49,
      categories: Categories.salads,
      availableAddons: [
        Addons(name: "Grilled Chicken", price: 3.49),
        Addons(name: "Avocado", price: 1.22),
      ],
    ),
    FoodModel(
      name: "Cobb Salad",
      description:
          "A hearty and satisfying salad packed with flavor! Chopped romaine lettuce, grilled chicken, crispy bacon, crumbled blue cheese, avocado, diced tomatoes, and red onion are tossed in our tangy vinaigrette dressing. A delicious and filling option.",
      imagePath: salads2,
      price: 10.99,
      categories: Categories.salads,
      availableAddons: [
        Addons(name: "Shrimp", price: 4.99),
        Addons(name: "French Fries", price: 1.49),
      ],
    ),
    FoodModel(
      name: "Greek Salad",
      description:
          "A delightful taste of the Mediterranean! A bed of fresh romaine lettuce topped with crumbled feta cheese, sliced kalamata olives, juicy tomatoes, red onion, and cucumber. Dressed in our light and flavorful Greek vinaigrette. A refreshing and healthy choice.",
      imagePath: salads3,
      price: 9.22,
      categories: Categories.salads,
      availableAddons: [
        Addons(name: "Grilled Salmon", price: 4.49),
        Addons(name: "Honey Mustard Dressing", price: 0.79),
      ],
    ),
    FoodModel(
      name: "Southwest Chicken Salad",
      description:
          "Spicy and flavorful, our Southwest Chicken Salad is a fiesta in a bowl! Grilled chicken strips tossed with a spicy chipotle dressing, black beans, corn, diced tomatoes, red onion, and shredded cheddar cheese on a bed of crisp romaine lettuce. A satisfying and zesty choice.",
      imagePath: salads4,
      price: 10.79,
      categories: Categories.salads,
      availableAddons: [
        Addons(name: "Guacamole", price: 1.49),
        Addons(name: "Tortilla Strips", price: 0.49),
      ],
    ),
    FoodModel(
      name: "Caprese Salad",
      description:
          "A simple yet elegant Italian salad featuring fresh mozzarella cheese, sliced tomatoes, and fragrant basil leaves drizzled with extra virgin olive oil and a touch of balsamic glaze. A light and flavorful option perfect for any occasion.",
      imagePath: salads5,
      price: 8.99,
      categories: Categories.salads,
      availableAddons: [
        Addons(name: "Pesto Dressing", price: 0.79),
      ],
    ),
    FoodModel(
      name: "French Fries",
      description:
          "Crispy golden fries, perfect for sharing or enjoying as a side. Seasoned to perfection and ideal for dipping in your favorite sauce.",
      imagePath: sides1,
      price: 2.49,
      categories: Categories.sides,
      availableAddons: [],
    ),
    FoodModel(
      name: "Onion Rings",
      description:
          "Thick-cut onion slices dipped in our signature batter and fried to a golden crisp. A delicious and satisfying side dish.",
      imagePath: sides2,
      price: 3.29,
      categories: Categories.sides,
      availableAddons: [
        Addons(name: "Cheese Sauce", price: 0.99),
      ],
    ),
    FoodModel(
      name: "Coleslaw",
      description:
          "A classic creamy coleslaw made with shredded cabbage, carrots, and a tangy mayonnaise dressing. A refreshing and light side dish perfect for any barbecue or picnic.",
      imagePath: sides3,
      price: 2.99,
      categories: Categories.sides,
      availableAddons: [],
    ),
    FoodModel(
      name: "Mac and Cheese",
      description:
          "Creamy and cheesy macaroni pasta baked to golden perfection. A comforting and delicious side dish that everyone will love.",
      imagePath: sides4,
      price: 3.79,
      categories: Categories.sides,
      availableAddons: [
        Addons(name: "Bacon Bits", price: 0.99),
        Addons(name: "Breadcrumbs", price: 0.79),
      ],
    ),
    FoodModel(
      name: "Onion Rings (Large)",
      description:
          "A supersized portion of our thick-cut onion slices dipped in our signature batter and fried to a golden crisp. Perfect for sharing or satisfying a larger craving.",
      imagePath: sides5,
      price: 4.99,
      categories: Categories.sides,
      availableAddons: [
        Addons(name: "Ranch Dressing", price: 0.79),
      ],
    ),

    // Drinks (similar format, add 3 more items here)
    FoodModel(
      name: "Soft Drinks",
      description:
          "Choose from a variety of refreshing soft drinks to quench your thirst. Available in popular flavors like cola, sprite, and ginger ale.",
      imagePath: drinks1,
      price: 1.99,
      categories: Categories.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: "Iced Tea",
      description:
          "Freshly brewed iced tea, perfect for a hot day. Available in classic unsweetened and a variety of flavored options.",
      imagePath: drinks2,
      price: 2.29,
      categories: Categories.drinks,
      availableAddons: [
        Addons(name: "Lemonade", price: 0.79),
      ],
    ),
    FoodModel(
      name: "Juice",
      description:
          "100% natural fruit juice, a healthy and refreshing thirst quencher. Available in a variety of flavors like orange, apple, and cranberry.",
      imagePath: drinks3,
      price: 2.99,
      categories: Categories.drinks,
      availableAddons: [],
    ),
    FoodModel(
      name: "Milkshake",
      description:
          "A creamy and delicious milkshake made with your choice of ice cream flavor. Perfect for satisfying your sweet tooth.",
      imagePath: drinks4,
      price: 3.49,
      categories: Categories.drinks,
      availableAddons: [
        Addons(name: "Whipped Cream", price: 0.49),
        Addons(name: "Chocolate Sauce", price: 0.79),
      ],
    ),
    FoodModel(
      name: "Coffee",
      description:
          "Freshly brewed hot coffee, available in a variety of roasts and flavors. The perfect way to start your day or enjoy a pick-me-up.",
      imagePath: drinks5,
      price: 2.49,
      categories: Categories.drinks,
      availableAddons: [
        Addons(name: "Cream", price: 0.39),
        Addons(name: "Caramel Syrup", price: 0.79),
      ],
    ),

    // Desserts (similar format, add 3 more items here)
    FoodModel(
      name: "Chocolate Cake",
      description:
          "A decadent chocolate cake layered with rich chocolate frosting. A classic dessert that's perfect for any occasion.",
      imagePath: desserts1,
      price: 4.99,
      categories: Categories.desserts,
      availableAddons: [
        Addons(name: "Vanilla Ice Cream", price: 1.29),
      ],
    ),
    FoodModel(
      name: "Cheesecake",
      description:
          "A creamy and smooth cheesecake with a delicious graham cracker crust. A classic dessert that everyone will love.",
      imagePath: desserts2,
      price: 4.49,
      categories: Categories.desserts,
      availableAddons: [
        Addons(name: "Strawberry Topping", price: 0.99),
        Addons(name: "Chocolate Sauce", price: 0.79),
      ],
    ),
    FoodModel(
      name: "Apple Pie",
      description:
          "A warm and comforting apple pie made with fresh apples and a flaky crust. Served with a scoop of vanilla ice cream upon request.",
      imagePath: desserts3,
      price: 4.29,
      categories: Categories.desserts,
      availableAddons: [],
    ),
    FoodModel(
      name: "Brownies",
      description:
          "Chewy and delicious brownies, perfect for a chocolate fix. Available in a variety of flavors like classic, walnut, and peanut butter.",
      imagePath: desserts4,
      price: 3.99,
      categories: Categories.desserts,
      availableAddons: [
        Addons(name: "Vanilla Ice Cream", price: 1.29),
        Addons(name: "Whipped Cream", price: 0.49),
      ],
    ),
    FoodModel(
      name: "New York-Style Cheesecake",
      description:
          "A luxurious and decadent New York-style cheesecake with a thick and creamy filling. A true indulgence for cheesecake lovers.",
      imagePath: desserts5,
      price: 5.49,
      categories: Categories.desserts,
      availableAddons: [
        Addons(name: "Blueberry Compote", price: 0.99),
        Addons(name: "Chocolate Ganache", price: 0.79),
      ],
    ),
  ];

  // Getters
  List<FoodModel> get menu => _menu;
  List<CartItem> get cart => _cart;

  // operations

  final List<CartItem> _cart = [];
  // add to the cart

  void addToCart(FoodModel food, List<Addons> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.addons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, addons: selectedAddons),
      );
    }
    notifyListeners();
  }

  // remove to the cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.remove(cartItem);
      }
    }
    notifyListeners();
  }

  // get total price from cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemPrice = cartItem.food.price;

      for (Addons addon in cartItem.addons) {
        itemPrice += addon.price;
      }

      total += cartItem.quantity * itemPrice;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalCartItems() {
    int total = 0;

    for (CartItem cartItem in _cart) {
      total += cartItem.quantity;
    }

    return total;
  }

  // crear the cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is you receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------------------------------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} = ${_formatPrice(cartItem.food.price)}");
      if (cartItem.addons.isNotEmpty) {
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.addons)} ");
      }
      receipt.writeln();
    }

    receipt.writeln("------------------------------------------------------");
    receipt.writeln();
    receipt.writeln("Total items: ${getTotalCartItems()}");
    receipt.writeln("Total price: ${getTotalPrice()}");
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addons> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
