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
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/HelloCardbubb.png",
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1,
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.height * 0.035,
            right: MediaQuery.of(context).size.height * 0.035,
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
            left: MediaQuery.of(context).size.width * 0.44,
            top: MediaQuery.of(context).size.height * 0.93,
            child: SmoothPageIndicator(
              effect: CustomizableEffect(dotDecoration: DotDecoration(
                width: MediaQuery.of(context).size.width * 0.042,
                height: MediaQuery.of(context).size.width * 0.042,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffC7D6FB)
              ), activeDotDecoration: DotDecoration(
                 width: MediaQuery.of(context).size.width * 0.042,
                height: MediaQuery.of(context).size.width * 0.042,
                  borderRadius: BorderRadius.circular(10),
                  color: blucolor
              )),
              controller: controller, count: 2)),
      ]),
    );
  }
}
