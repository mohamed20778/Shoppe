import 'package:flutter/material.dart';
import 'package:shoppe/components/custom_button.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/homepage.dart';

class OnboardReadyCard extends StatelessWidget {
  const OnboardReadyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/shoppingperson2.png",
           scale: MediaQuery.of(context).size.aspectRatio*0.01,
          ),
          SizedBox(
            height: context.setHeight(46),
          ),
          Text(
            'Ready?',
            style: TextStyle(
                fontSize: context.setSp(28), fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
          ),
          SizedBox(
            height: context.setHeight(12),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: context.setWidth(42),
                right: context.setWidth(42)),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: context.setSp(19),
                  color: Colors.black87,
                )),
          ),
          SizedBox(
            height:context.setHeight(30),
          ),

          MyButton(
              buttonfunction: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
              },
              text: "Let's Start",
              color: blucolor,
              width: context.setButtonWidth(201),
              height: context.setButtonHeight(50),
              textcolor: Colors.white),
               SizedBox(
            height: context.setHeight(30),
          ),
        ],
      ),
    );
  }
}
