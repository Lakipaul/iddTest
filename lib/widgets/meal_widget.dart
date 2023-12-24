import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:idd/pages/menu_page.dart';

class MealWidget extends StatelessWidget {
  final Meal meal;
  const MealWidget({
    super.key,
    required this.meal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 7,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.transparent)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  meal.imagePath,
                  width: 64,
                  height: 64,
                ),
              ),
            ),
            Gap(15),
            Expanded(
              child: ListTile(
                title: Text(meal.title),
                subtitle: Text(meal.subTitle),
                trailing: Text(
                  "\$ ${meal.price}",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF0000)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
