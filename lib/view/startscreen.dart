import 'package:flutter/material.dart';
import 'package:shoppe/components/custom_button.dart';
import 'package:shoppe/components/reusable_row.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/authscreens/registerscreen.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: context.setHeight(232),
          ),
          Center(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Ellipse.png",
                  width: 134,
                  height: 134,
                ),
                Positioned(
                  top: 20,
                  left: 26,
                  child: Image.asset(
                    "assets/images/bag.png",
                    width: 81,
                    height: 81,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Shoppe",
            style: TextStyle(
                fontSize: context.setSp(50), fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: context.setHeight(185),
          ),
          MyButton(
            text: "Let's get started",
            color: blucolor,
            width: context.setButtonWidth(335),
            height:context.setButtonHeight(61),
            textcolor: Colors.white,
            buttonfunction: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Registerscreen()));
            },
          ),
          SizedBox(
            height: context.setHeight(24),
          ),
          const ReusableRow(),
        ]),
      ),
    );
  }
}
