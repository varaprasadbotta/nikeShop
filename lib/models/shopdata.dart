import 'package:flutter/material.dart';
import 'package:nikeshop/models/shoe.dart';

class ShopData extends ChangeNotifier {
  //list of shoe's
  final List<Shoe> _ShoeList = [
    //different types of shoes
    // Air Max
    Shoe(
        shoename: "Nike Max",
        shoeprice: "5000",
        shoeImagePath: "lib/images/shoe.png",
        shoeDescription:
            "superior comfort and cushioning for everyday wear and athletic activities."),
    // Air Force 1
    Shoe(
        shoename: "Nike Force 1",
        shoeprice: "8000",
        shoeImagePath: "lib/images/shoe1.png",
        shoeDescription:
            "Iconic basketball-inspired shoes known for their classic design and versatility, "),
    // Air Jordan
    Shoe(
        shoename: "Air Jordan",
        shoeprice: "4500",
        shoeImagePath: "lib/images/shoe2.png",
        shoeDescription:
            "Signature line of basketball shoes, originally designed for Michael Jordan"),
    // Air Zoom
    Shoe(
        shoename: "Nike Zoom",
        shoeprice: "3800",
        shoeImagePath: "lib/images/shoe3.png",
        shoeDescription:
            " featuring responsive Zoom Air units for enhanced cushioning "),
    // React
    Shoe(
        shoename: "Nike React",
        shoeprice: "6000",
        shoeImagePath: "lib/images/shoe4.png",
        shoeDescription:
            "Nike's React foam technology for lightweight, responsive cushioning"),
  ];

  //list of cart items
  List<Shoe> _CartList = [];

  //get the shoe's list
  List<Shoe> get ShoeList => _ShoeList;

  //get the cart list
  List<Shoe> get CartList => _CartList;

  //method to add items to cart
  void addItemToCart(Shoe shoe) {
    _CartList.add(shoe);
    notifyListeners();
  }

  //method to remove items from cart
  void removeItemFromCart(Shoe shoe) {
    _CartList.remove(shoe);
    notifyListeners();
  }
}
