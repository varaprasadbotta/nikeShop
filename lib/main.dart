import "package:flutter/material.dart";
import "package:nikeshop/models/shopdata.dart";
import "package:provider/provider.dart";

import "pages/Intro_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopData(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intro_page(),
      ),
    );
  }
}
