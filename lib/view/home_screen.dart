import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/view/home/cart_screen.dart';
import 'package:shoppe/view/home/favourite_screen.dart';
import 'package:shoppe/view/home/shop_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const ShopPage(),
    const FavouriteScreen(),
    const CartScreen(),
    const Text("Profile"),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: blucolor,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            const BottomNavigationBarItem(
                icon: FaIcon(
                  Icons.home_outlined,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: FaIcon(Icons.favorite_border_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: FaIcon(Icons.shopping_bag_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: FaIcon(Icons.person_2_outlined), label: ''),
          ]),
      body: pages[currentIndex],
    );
  }
}
