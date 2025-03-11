import 'package:flutter/material.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

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
         
          scale:MediaQuery.of(context).size.aspectRatio*0.01,
          ),
          SizedBox(
            height: context.setHeight(46),
          ),
          Text(
            'Hello',
            style: TextStyle(
                fontSize: context.setSp(28), fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
          ),
          SizedBox(
            height: context.setHeight(12),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: context.setWidth(41),
                right: context.setWidth(41),),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.',
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: context.setSp( 19),
                  color: Colors.black87,
                )),
          )
        ],
      ),
    );
  }
}
