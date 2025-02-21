import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shoppe/components/custom_form_field.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/view/authscreens/loginscreen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final controller=PageController();
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/PasswordBubbles.png',
                  scale: MediaQuery.of(context).size.aspectRatio * 0.01,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.20,
                  left: MediaQuery.of(context).size.width * 0.4,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.121,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: MediaQuery.of(context).size.width * 0.12,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/artist-2 1.png'),
                        radius: MediaQuery.of(context).size.width * 0.105,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.35,
                    left: MediaQuery.of(context).size.width * 0.26,
                    child: Text(
                      'Hello, Romina!!',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.425,
                    left: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      'Type your password',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'NunitoSans',
                      ),
                    )),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CustomFormField(
              hintText: 'Password',
              obscureText: isvisible,
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
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            InkWell(
              splashColor: Colors.white,
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      highlightColor: Colors.white,
              onTap: () {
                
              },
              child: Text(
                'Forgot your Password?',style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'NunitoSans',
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not you?',
                  style: TextStyle(color: Color(0xff202020), fontSize: 15),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.009,
                ),
                Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: blucolor, borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 15,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
