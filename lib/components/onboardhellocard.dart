import 'package:flutter/material.dart';

class OnboardHelloCard extends StatelessWidget {
  const OnboardHelloCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/shopping_person.png",
          scale: MediaQuery.of(context).size.aspectRatio*0.01,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            'Hello',
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
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.',
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 19,
                  color: Colors.black87,
                )),
          )
        ],
      ),
    );
  }
}
