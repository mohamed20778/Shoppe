import 'package:flutter/material.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/reusable_row.dart';
import 'package:shoppe/core/theme/app_style.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/auth/registerscreen.dart';

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
          Text("Shoppe", style: AppStyle.headlinestyle1(context)),
          SizedBox(
            height: context.setHeight(185),
          ),
          MyButton(
            text: "Let's get started",
            color: AppColor.primaryColor,
            width: context.setButtonWidth(335),
            height: context.setButtonHeight(61),
            textcolor: Colors.white,
            buttonfunction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Registerscreen()));
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
