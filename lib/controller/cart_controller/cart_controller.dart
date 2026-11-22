import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[
    {
      "title": "Strawberry",
      "img": "assets/strawberry.png",
      "image": "assets/strawberry.png",
      "price": "2",
      "quantity": 1,
      "unit": "500 ml"
    }
  ].obs;

  void addToCart(Map<String, dynamic> product) {
    int index = cartItems.indexWhere((item) => item['title'] == product['title']);
    if (index != -1) {
      int currentQty = cartItems[index]['quantity'] ?? 1;
      cartItems[index]['quantity'] = currentQty + 1;
      cartItems.refresh();
    } else {
      var newItem = Map<String, dynamic>.from(product);
      newItem['quantity'] = newItem['quantity'] ?? 1;
      cartItems.add(newItem);
    }
    Get.snackbar(
      "Success",
      "${product['title']} added to cart",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color(0xff55AB60),
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
  }

  void removeFromCart(int index) {
    if (index >= 0 && index < cartItems.length) {
      String title = cartItems[index]['title'] ?? "Product";
      cartItems.removeAt(index);
      Get.snackbar(
        "Removed",
        "$title removed from cart",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    }
  }

  void incrementQuantity(int index) {
    if (index >= 0 && index < cartItems.length) {
      int currentQty = cartItems[index]['quantity'] ?? 1;
      cartItems[index]['quantity'] = currentQty + 1;
      cartItems.refresh();
    }
  }

  void decrementQuantity(int index) {
    if (index >= 0 && index < cartItems.length) {
      int currentQty = cartItems[index]['quantity'] ?? 1;
      if (currentQty > 1) {
        cartItems[index]['quantity'] = currentQty - 1;
        cartItems.refresh();
      } else {
        removeFromCart(index);
      }
    }
  }

  double get totalAmount {
    double total = 0.0;
    for (var item in cartItems) {
      double price = double.tryParse(item['price'].toString().replaceAll(RegExp(r'[^0-9.]'), '')) ?? 0.0;
      int qty = (item['quantity'] is int) ? item['quantity'] : 1;
      total += price * qty;
    }
    return total;
  }
}
