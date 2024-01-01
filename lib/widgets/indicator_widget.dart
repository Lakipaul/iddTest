import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  final int indicator;
  const IndicatorWidget({super.key, required this.indicator});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          2,
          (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 10,
                  width: index == indicator ? 20 : 10,
                  color: Colors.red,
                ),
              )),
    );
  }
}
