import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      child: Column(
        children: [
          DrawerHeader(
              child: Image.asset(
            "lib/images/nike.png",
            height: 60,
            color: Colors.white,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text("Home"),
            // tileColor: Colors.white,
            titleTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            title: Text("Cart"),
            // tileColor: Colors.white,
            titleTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.white),
            title: Text("about"),
            // tileColor: Colors.white,
            titleTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text("logout"),
              // tileColor: Colors.white,
              titleTextStyle:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
