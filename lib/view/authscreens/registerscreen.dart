import 'package:flutter/material.dart';
import 'package:shoppe/components/Button.dart';
import 'package:shoppe/components/custom_form_field.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/view/authscreens/loginscreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              "assets/images/Bubbles.png",
              scale: 0.5,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.14,
              left: MediaQuery.of(context).size.height * 0.05,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create',
                      style: TextStyle(
                          fontSize: 49,
                          fontWeight: FontWeight.bold,
                          fontFamily: ralewayfont),
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 49,
                          fontWeight: FontWeight.bold,
                          fontFamily: ralewayfont),
                    ),
                  ]),
            ),
            Positioned(
                left: MediaQuery.of(context).size.height * 0.05,
                top: MediaQuery.of(context).size.height * 0.35,
                child: InkWell(
                    splashColor: Colors.white,
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    highlightColor: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Image.asset("assets/images/camera picker.png"))),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.09,
        ),
        CustomFormField(
          hintText: 'Name',
          obscureText: false,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        CustomFormField(
          hintText: 'Email',
          obscureText: false,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        CustomFormField(
          hintText: 'Password',
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isvisible = !isvisible;
              });
            },
            icon: Icon(
              isvisible ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
          ),
          obscureText: isvisible,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.055,
        ),
        MyButton(
          text: 'Done',
          color: blucolor,
          width: 335,
          height: 61,
          textcolor: Colors.white,
          buttonfunction: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(7),
          onTap: () {
           Navigator.pop(context);
          },
          child: Text(
            "Cancel",
            style: TextStyle(
                color: Colors.black, fontFamily: 'NunitoSans', fontSize: 18),
          ),
        ),
      ]),
    ));
  }
}
