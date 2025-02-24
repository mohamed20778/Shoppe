import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/view/homepgscreens/favouritescreen.dart';
import 'package:shoppe/view/homepgscreens/shopscreen.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> pages = [
    ShopPage(),
    FavouriteScreen(),
    Text("Profile"),
  ];
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
      final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
        final double screenaspectratio = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        selectedItemColor: Colors.grey,
        unselectedItemColor: blucolor,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(icon: FaIcon(Icons.home_outlined,size: screenaspectratio*0.03,), label: ''),
        BottomNavigationBarItem(icon:FaIcon(Icons.favorite_border_outlined), label: '' ),
        BottomNavigationBarItem(icon: FaIcon(Icons.person_2_outlined),  label: ''),
      ]),
    body: pages[currentIndex],
    
    );
  }
}