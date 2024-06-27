import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  // Food Menu
  final List<Food> _foodMenu = [
    //salman suhi
    Food(
      name: "Sushi Roll",
      price: "10.00",
      imagePath: "lib/images/sushi_roll1.png",
      rating: "4.9",
    ),
    //Origir
    Food(
      name: "Sushi Roll sashimi",
      price: "12.00",
      imagePath: "lib/images/sushi_sashimi.png",
      rating: "5.0",
    ),
    //salmon
    Food(
      name: "Salmon",
      price: "8.00",
      imagePath: "lib/images/salmon.png",
      rating: "4.1",
    ),

    //sashimi
    Food(
      name: "Sashimi",
      price: "10.00",
      imagePath: "lib/images/sashimi.png",
      rating: "4.9",
    ),
  ];

// customer cart
  final List<Food> _cart = [];

// getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

// add food to cart

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

//remove food from cart

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
