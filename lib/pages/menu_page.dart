import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:idd/widgets/meal_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final searchCtrl = TextEditingController();
  List<Meal> mealList = <Meal>[];
  bool initilized = false;

  init() {
    if (initilized) {
      return;
    }
    initilized = true;
    mealList = [
      Meal(
          imagePath:
              "https://arousseloubnane.com/cdn/shop/files/Classicburger.jpg?v=1690184374",
          title: "Classic Burger",
          subTitle: "Juicy beef patty",
          price: 9.99),
      Meal(
          imagePath:
              "https://www.jessicagavin.com/wp-content/uploads/2022/06/chicken-caesar-salad-24.jpg",
          title: "Margherita Pizza",
          subTitle: "Fresh mozzarella",
          price: 12.49),
      Meal(
          imagePath:
              "https://hips.hearstapps.com/hmg-prod/images/chicken-caesar-salad7-1654809005.jpg",
          title: "Caesar Salad",
          subTitle: "Romaine lettuce",
          price: 7.99),
      Meal(
          imagePath:
              "https://hips.hearstapps.com/hmg-prod/images/carbonara-index-6476367f40c39.jpg",
          title: "Pasta Carbonara",
          subTitle: "Spaghetti with creamy sauce",
          price: 11.99)
    ];
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 80, left: 30),
            child: Text(
              "Meal Menu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFFFF0F0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.transparent)),
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.search),
                    )),
                controller: searchCtrl,
              ),
            ),
          ),
          Gap(20),
          ...mealList.map((e) => MealWidget(meal: e)).toList()
        ],
      ),
    );
  }
}

class Meal {
  final String imagePath;
  final String title;
  final String subTitle;
  final double price;

  Meal({
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}
