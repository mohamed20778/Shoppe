import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/custom_form_field.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';
import 'package:shoppe/view/onboarding_screen.dart';

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
      child: Container(
        width:
            context.isLandscape ? context.screenWidth * 2 : context.screenWidth,
        height: context.isLandscape
            ? context.screenHeight * 2
            : context.screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/02 Create Account (2).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: context.setWidth(30)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.setHeight(122),
                      ),
                      Text(
                        'Create',
                        style: TextStyle(
                            fontSize: context.setSp(50),
                            fontWeight: FontWeight.bold,
                            fontFamily: ralewayfont),
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                            fontSize: context.setSp(50),
                            fontWeight: FontWeight.bold,
                            fontFamily: ralewayfont),
                      ),
                      SizedBox(
                        height: context.setHeight(54),
                      ),
                      InkWell(
                          splashColor: Colors.white,
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          highlightColor: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {},
                          child:
                              Image.asset("assets/images/camera picker.png")),
                    ]),
              ),
              SizedBox(
                height: context.setHeight(32),
              ),
              const CustomFormField(
                hintText: 'Name',
                obscureText: false,
              ),
              const CustomFormField(
                hintText: 'Email',
                obscureText: false,
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
                height: context.setHeight(15),
              ),
            ]),
            Column(children: [
              MyButton(
                text: 'Done',
                color: blucolor,
                width: context.setButtonWidth(335),
                height: context.setButtonHeight(61),
                textcolor: Colors.white,
                buttonfunction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelloScreen()));
                },
              ),
              SizedBox(
                height: context.setHeight(24),
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
                      fontSize: context.setSp(15)),
                ),
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
