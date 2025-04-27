import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoppe/core/utils/validators_helper/password_validator.dart';
import 'package:shoppe/cubits/auth_cubit/auth_cubit.dart';
import 'package:shoppe/view/home/home_screen.dart';
import 'package:shoppe/view/auth/loginscreen.dart';
import 'package:shoppe/widgets/custom_button.dart';
import 'package:shoppe/widgets/custom_form_field.dart';
import 'package:shoppe/core/utils/constants.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isvisible = false;
  String? email;

  Future<void> getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
  }

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
            if (state is AuthSuccessState) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            } else if (state is AuthFailureState) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Something went wrong')));
            }
          },
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.vertical,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/PasswordBackGround.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.setWidth(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: context.setHeight(40)),
                          CircleAvatar(
                            radius: context.setWidth(47),
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: context.setWidth(46.5),
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(
                                    'assets/images/artist-2 1.png'),
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
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: context.setHeight(30)),
                          Text(
                            'Type your password',
                            style: TextStyle(
                              fontSize: context.setSp(18),
                              fontFamily: 'NunitoSans',
                            ),
                          ),
                          SizedBox(height: context.setHeight(23)),
                          CustomFormField(
                            validator: (value) =>
                                PasswordValidator.validatePassword(value ?? ""),
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
                                isvisible
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: context.setHeight(20)),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              foregroundColor: WidgetStateProperty.all(
                                  const Color(0xff202020)),
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              shadowColor:
                                  WidgetStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Forgot your Password?',
                              style: TextStyle(
                                color: const Color(0xff202020),
                                fontSize: context.setSp(15),
                                fontFamily: 'NunitoSans',
                              ),
                            ),
                          ),
                          SizedBox(height: context.setHeight(30)),
                          if (state is AuthLoadingState)
                            const CircularProgressIndicator()
                          else
                            MyButton(
                              buttonfunction: () {
                                if (_formKey.currentState!.validate() ||
                                    email != null) {
                                  BlocProvider.of<AuthCubitCubit>(context)
                                      .loginUser(
                                          email!, passwordController.text);
                                }
                              },
                              text: 'Login',
                              color: blucolor,
                              width: double.infinity,
                              height: context.setButtonHeight(56),
                              textcolor: Colors.white,
                            ),
                          SizedBox(height: context.setHeight(40)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Not you?',
                                style: TextStyle(
                                    color: Color(0xff202020), fontSize: 15),
                              ),
                              SizedBox(width: context.setWidth(8)),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: blucolor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
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
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: context.setHeight(40)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
