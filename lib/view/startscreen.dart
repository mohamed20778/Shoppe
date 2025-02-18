import 'package:flutter/material.dart';
import 'package:shoppe/components/Button.dart';
import 'package:shoppe/constants.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
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
          style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.22,
        ),
        MyButton(
          text: "Let's get started",
          color: blucolor,
          width: 335,
          height: 61,
          textcolor: Colors.white, buttonfunction: () { 
  Navigator.popAndPushNamed(context, 'registerScreen');
           },
          
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ',
              style: TextStyle(color: Color(0xff202020), fontSize: 15),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.009,
            ),
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: blucolor, borderRadius: BorderRadius.circular(50)),
                child: IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, 'loginScreen');
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
