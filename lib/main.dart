
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/view/authscreens/loginscreen.dart';
import 'package:shoppe/view/authscreens/registerscreen.dart';
import 'package:shoppe/view/startscreen.dart';

void main() {
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize:  const Size(375, 812),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      initialRoute: 'startScreen',
      routes: {
        'startScreen': (context) => const Startscreen(),
        'registerScreen': (context) => const Registerscreen(),
        'loginScreen': (context) => const LoginScreen(),
      },
    ),
          );
  }
}
