import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nikeshop/components/intro_pageButton.dart';
import 'package:nikeshop/pages/home_page.dart';

class Intro_page extends StatelessWidget {
  const Intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Nike",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Image.asset(
                  "lib/images/nike.png",
                  height: 350,
                ),
              ),

              //text(Push your limits)
              Text(
                "Push your limits",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              // Spacer(),
              SizedBox(
                height: 30,
              ),
              //subText(Success isn't given. It's earned. On the track, on the field, in the gym. With blood, sweat, and the occasional tear.")
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Success isn't given. It's earned. On the track, on the field, in the gym. With blood, sweat, and the occasional tear.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                ),
              ),
              Spacer(),
              //button to go homepage
              Intro_page_Button(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_Page())),
              ),

              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
