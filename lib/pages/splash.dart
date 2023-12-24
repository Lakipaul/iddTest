import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:idd/pages/menu_page.dart';
import 'package:idd/pages/on_boarding_1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnBoardingWidget(
          imagePath: "lib\\assets\\Illustration.png",
          title: "Good food at a cheap price",
          subTitle:
              "You can eat at expensive restaurants with affordable price",
          onClick: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OnBoardingWidget(
                          imagePath: "lib\\assets\\Illustartion1.png",
                          title: "Select the Favorities Menu",
                          subTitle:
                              "Now eat well, don't leave the house,You can choose your favorite food only with one click",
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MenuPage()));
                          },
                        )));
          },
        ),
      )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 160, 0, 20),
        child: Column(
          children: [
            Stack(children: [
              Image.asset("lib\\assets\\Group1.png"),
              Positioned(
                right: 20,
                child: Image.asset("lib\\assets\\Image.png"),
              )
            ]),
            Gap(20),
            Text(
              "Food Runs",
              style: TextStyle(
                fontSize: 45,
                color: Color(0xFFFF0000),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
