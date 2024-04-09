import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nikeshop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  final Shoe shoe;
  ShoeTile({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 400,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                shoe.shoeImagePath,
                height: 220,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //Description
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                shoe.shoeDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            //price + name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        shoe.shoename,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee_sharp),
                        Text(
                          shoe.shoeprice,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            )

            //add button
          ],
        ));
  }
}
