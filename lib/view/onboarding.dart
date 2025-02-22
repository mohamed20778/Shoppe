import 'package:flutter/material.dart';
import 'package:shoppe/components/onboardhellocard.dart';
import 'package:shoppe/components/onboardreadycard.dart';
import 'package:shoppe/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => HelloScreenState();
}

class HelloScreenState extends State<HelloScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/HelloCardbubb.png",
        ),
        Padding(
          padding: EdgeInsets.only(
            top: screenheight * 0.1,
            bottom: screenheight * 0.1,
            left: screenheight * 0.035,
            right: screenheight * 0.035,
          ),
          child: PhysicalModel(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(30),
            elevation: 9,
            shadowColor: Colors.grey,
            color: Colors.white,
            child: PageView(
            controller: controller,
              children: [
             OnboardHelloCard(),
              OnboardReadyCard(),
            ]),
          ),
        ),
        Positioned(
            left: screenwidth * 0.44,
            top: screenheight * 0.93,
            child: SmoothPageIndicator(
              effect: CustomizableEffect(dotDecoration: DotDecoration(
                width: screenwidth * 0.042,
                height: screenwidth * 0.042,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffC7D6FB)
              ), activeDotDecoration: DotDecoration(
                 width: screenwidth * 0.042,
                height: screenwidth * 0.042,
                  borderRadius: BorderRadius.circular(10),
                  color: blucolor
              )),
              controller: controller, count: 2)),
      ]),
    );
  }
}
