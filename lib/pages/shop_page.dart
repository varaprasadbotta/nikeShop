import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nikeshop/components/drawer.dart';
import 'package:nikeshop/components/searchBar.dart';
import 'package:nikeshop/components/shoeTile.dart';
import 'package:nikeshop/models/shoe.dart';
import 'package:nikeshop/models/shopdata.dart';
import 'package:provider/provider.dart';

class Shop_Page extends StatefulWidget {
  const Shop_Page({super.key});

  @override
  State<Shop_Page> createState() => _Shop_PageState();
}

class _Shop_PageState extends State<Shop_Page> {
  // Function to add item to cart
  void addtocart(Shoe shoe) {
    Provider.of<ShopData>(context, listen: false).addItemToCart(shoe);
    //let user now item added to cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Success fully added ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              content: Text(
                "Item add to cart",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopData>(
      builder: (context, value, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            ),
          ),
          drawer: MyDrawer(),
          body: Column(
            children: [
              Searchbar(),
              Text(
                "Be bold. Be brave. Be relentless. Just do it.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot picks",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "see all",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.ShoeList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe individualshoe = value.ShoeList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 35.0),
                      child: ShoeTile(
                        shoe: individualshoe,
                        onTap: () => addtocart(individualshoe),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Divider(
                  thickness: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
