import 'package:flutter/material.dart';
import 'package:shoppe/components/Button.dart';
import 'package:shoppe/constants.dart';

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
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'Ready?',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.118,
                right: MediaQuery.of(context).size.width * 0.09),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 19,
                  color: Colors.black87,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),

          MyButton(
              buttonfunction: () {},
              text: "Let's Start",
              color: blucolor,
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height * 0.055,
              textcolor: Colors.white),
               SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ],
      ),
    );
  }
}
