import 'package:flutter/material.dart';
import 'package:nikeshop/models/shoe.dart';

class CartPageShoeTile extends StatelessWidget {
  void Function()? onPressed;
  Shoe shoe;
  CartPageShoeTile({super.key, required this.shoe, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black45)),
        child: ListTile(
          title: Text(
            shoe.shoename,
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.currency_rupee_outlined),
              Text(
                shoe.shoeprice,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
            ],
          ),
          leading: Image.asset(
            shoe.shoeImagePath,
            height: 50,
          ),
          trailing: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.delete,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
