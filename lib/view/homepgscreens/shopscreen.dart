import 'package:flutter/material.dart';
import 'package:shoppe/components/categoriscard.dart';
import 'package:shoppe/components/custom_form_field.dart';
import 'package:shoppe/constants.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {
  List<String> images = [
    'assets/images/shoppingperson2.png',
    'assets/images/shoppingperson2.png',
    'assets/images/shoppingperson2.png',
    'assets/images/shoppingperson2.png',
    
  ];
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenaspectratio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: screenheight * 0.05,
            left: screenwidth * 0.05,
            right: screenwidth * 0.05),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Shop',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: 'Raleway'),
                ),
                SizedBox(
                  width: screenwidth * 0.05,
                ),
                CustomFormField(
                  hintText: 'search',
                  obscureText: false,
                  width: screenwidth * 0.67,
                  height: screenheight * 0.048,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: blucolor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),
            Image.asset(
              'assets/images/Big Sale Banner (1).png',
              scale: screenaspectratio * 0.02,
            ),
            SizedBox(
              height: screenheight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      color: Color(0xff202020),
                      fontSize: 21,
                      fontFamily: 'raleway',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.009,
                ),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'raleway',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: blucolor,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 17,
                          ),
                        )),
                  ],
                )
              ],
            ),
            Expanded(
              child: GridView.builder( 
                  padding: EdgeInsets.only(top: screenheight * 0.01),
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 4/4.8,
                      crossAxisSpacing: screenwidth * 0.02,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Categoriescard();
                  }),
            ),
          
          ],
        ),
      ),
    );
  }
}
