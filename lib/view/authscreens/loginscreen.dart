import 'package:flutter/material.dart';
import 'package:shoppe/components/Button.dart';
import 'package:shoppe/components/custom_form_field.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/view/authscreens/passworscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Bubbles (2).png', scale: MediaQuery.of(context).size.aspectRatio*0.01),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.55,
                  child: Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 52,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Good to see you back! ♡',
                          style: TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        CustomFormField(hintText: 'Email', obscureText: false),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        MyButton(
                            buttonfunction: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordScreen()));
                            },
                            text: 'Next',
                            color: blucolor,
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 61,
                            textcolor: Colors.white),
                             SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.39),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(7),
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'NunitoSans',
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
