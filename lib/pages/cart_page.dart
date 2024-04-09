import 'package:flutter/material.dart';
import 'package:nikeshop/components/cartItemTile.dart';
import 'package:nikeshop/models/shoe.dart';
import 'package:nikeshop/models/shopdata.dart';
import 'package:provider/provider.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({super.key});

  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  //remove item to cart
  void removeItemFromCart(Shoe shoe) {
    Provider.of<ShopData>(context, listen: false).removeItemFromCart(shoe);
    //let user now item removed from cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Success deleted",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              content: Text(
                "Item removed from cart",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopData>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "My Cart",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.CartList.length,
                    itemBuilder: (context, index) {
                      Shoe individualshoe = value.CartList[index];
                      return CartPageShoeTile(
                        shoe: individualshoe,
                        onPressed: () => removeItemFromCart(individualshoe),
                      );
                    }))
          ],
        )),
      ),
    );
  }
}
