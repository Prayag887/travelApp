// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tavel_app/widgets/app_large_text.dart';
import 'package:tavel_app/widgets/responsive_button.dart';

import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // image haru lai list ma raakhera ekkatichoti sabai image pathaako
  List images = [
    "mountain1.png",
    "mountainexp.jpg",
    "mountain2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,

        ///images jati ota xa teti itemcount hunxa
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            // margin: EdgeInsets.only(top: 350),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/" + images[index]),
                // colorFilter: ColorFilter.mode(
                //     Color.fromARGB(255, 81, 87, 83).withOpacity(1.0),
                //     BlendMode.softLight),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 90, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //applargetext is a class and is reusable
                      AppLargeText(text: "Trips", color: Colors.black),
                      AppText(text: "Mountain", size: 30),
                      Container(
                        width: 270,
                        padding: EdgeInsets.only(top: 20),
                        child: AppText(
                          text:
                              "Mountain hikes is our speciality. Come to us for incredible experience and adventure",
                          color: Color.fromARGB(255, 74, 98, 110),
                        ),
                      ),

                      SizedBox(height: 20),
                      ResponsiveButton(width: 120),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? Colors.blueGrey
                              : Colors.blueGrey[300],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
