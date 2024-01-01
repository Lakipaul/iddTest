import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:idd/widgets/indicator_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final Function onClick;
  final int indicator;
  const OnBoardingWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle,
      required this.onClick,
      required this.indicator});

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  final controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.imagePath),
              Gap(30),
              Container(
                width: 200,
                child: Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(15),
              Container(
                  width: 200,
                  child: Text(
                    widget.subTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF4B5563)),
                  )),
              Gap(20),
              SizedBox(
                width: 150,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    widget.onClick();
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFFFF0000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SmoothPageIndicator(controller: controller, count: 2),
              IndicatorWidget(
                indicator: widget.indicator,
              )
            ],
          ),
        ),
      ),
    );
  }
}
