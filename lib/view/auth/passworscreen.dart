import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoppe/cubits/auth_cubit/auth_cubit.dart';
import 'package:shoppe/view/home/home_screen.dart';

import 'package:shoppe/widgets/custom_button.dart';
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
  TextEditingController passwordController = TextEditingController();
  bool isvisible = false;
  String? email;

  Future<void> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
  }

  void showSuccessToast() {
    Fluttertoast.showToast(
      msg: "Login successful!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  @override
  void initState() {
    super.initState();
    getEmail();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubitCubit(),
      child: Scaffold(
        body: BlocConsumer<AuthCubitCubit, AuthCubitState>(
          listener: (context, state) {
            if (state is AuthLoadingState) {
              const Center(child: CircularProgressIndicator());
            } else if (state is AuthSuccessState) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            } else if (state is AuthFailureState) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('something went wrong')));
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
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
                      controller: passwordController,
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
                    SizedBox(height: context.setHeight(50)),
                    MyButton(
                        buttonfunction: () {
                          BlocProvider.of<AuthCubitCubit>(context)
                              .loginUser(email!, passwordController.text);
                        },
                        text: 'Login',
                        color: blucolor,
                        width: context.setButtonWidth(335),
                        height: context.setButtonHeight(61),
                        textcolor: Colors.white),
                    SizedBox(height: context.setHeight(150)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not you?',
                          style:
                              TextStyle(color: Color(0xff202020), fontSize: 15),
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
                                        builder: (context) =>
                                            const LoginScreen()));
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
            );
          },
        ),
      ),
    );
  }
}
