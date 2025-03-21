import 'package:flutter/material.dart';
import 'package:shoppe/widgets/custom_form_field.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/auth/loginscreen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final controller = PageController();
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: context.isLandscape
              ? context.screenWidth * 2
              : context.screenWidth,
          height: context.isLandscape
              ? context.screenHeight * 2
              : context.screenHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/PasswordBackGround.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              SizedBox(
                height: context.setHeight(156),
              ),
              CircleAvatar(
                radius: context.setWidth(47),
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: context.setWidth(46.5),
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/images/artist-2 1.png'),
                    radius: context.setWidth(40),
                  ),
                ),
              ),
              SizedBox(height: context.setHeight(35)),
              Text(
                'Hello, Romina!!',
                style: TextStyle(
                    fontSize: context.setSp(28),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: context.setHeight(30),
              ),
              Text(
                'Type your password',
                style: TextStyle(
                  fontSize: context.setSp(18),
                  fontFamily: 'NunitoSans',
                ),
              ),
              SizedBox(height: context.setHeight(23)),
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
              SizedBox(height: context.setHeight(30)),
              InkWell(
                splashColor: Colors.white,
                hoverColor: Colors.white,
                focusColor: Colors.white,
                highlightColor: Colors.white,
                onTap: () {},
                child: Text(
                  'Forgot your Password?',
                  style: TextStyle(
                    fontSize: context.setSp(15),
                    fontFamily: 'NunitoSans',
                  ),
                ),
              ),
              SizedBox(height: context.setHeight(250)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
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
                          color: blucolor,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        icon: const Icon(
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
      ),
    );
  }
}
