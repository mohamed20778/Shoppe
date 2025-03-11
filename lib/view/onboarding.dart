import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/components/onboardhellocard.dart';
import 'package:shoppe/components/onboardreadycard.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';
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
        body: SingleChildScrollView(
          child: Container(
                width:
            context.isLandscape ? context.screenWidth * 2 : context.screenWidth,
            height:  context.isLandscape ? context.screenHeight * 2 : context.screenHeight,
                decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onboardingBackground.png'),
            fit: BoxFit.cover,
          ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 67),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: context.setHeight(81),right: context.setWidth(20),left:context.setWidth(20), ),
                          child: PhysicalModel(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(30),
                            elevation: 9,
                            shadowColor: Colors.grey,
                            color: Colors.white,
                            child: PageView(
                              controller: controller,
                              children: const [
                                OnboardHelloCard(),
                                OnboardReadyCard(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: context.setHeight(30),),
                      SmoothPageIndicator(
                  effect: CustomizableEffect(
                    dotDecoration: DotDecoration(
                      width: context.setWidth(20),
                      height: context.setHeight(20),
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xffC7D6FB),
                    ),
                    activeDotDecoration: DotDecoration(
                      width: context.setWidth(20),
                      height: context.setHeight(20),
                      borderRadius: BorderRadius.circular(10.r),
                      color: blucolor,
                    ),
                  ),
                  controller: controller,
                  count: 2,
                      ),
                    ],
                  ),
                )
              ),
        ));
  }
}
