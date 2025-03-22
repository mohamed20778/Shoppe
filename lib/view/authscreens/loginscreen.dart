import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/custom_form_field.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/authscreens/passworscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          height: context.screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/images/Bubbles (2).png'),
                fit: BoxFit.cover,
                scale: context.isLandscape
                    ? context.setHeight(0.5)
                    : context.setWidth(0.5)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.setHeight(438),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: context.setSp(52),
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Good to see you back! ♡',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: context.setSp(19),
                      ),
                    ),
                    SizedBox(
                      height: context.setHeight(17),
                    ),
                    CustomFormField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: context.setHeight(36.7),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyButton(
                        buttonfunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PasswordScreen()));
                        },
                        text: 'Next',
                        color: blucolor,
                        width: context.setButtonWidth(335),
                        height: context.setButtonHeight(61),
                        textcolor: Colors.white),
                    SizedBox(
                      height: context.setHeight(14),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(7.r),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'NunitoSans',
                            fontSize: context.setSp(18)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
