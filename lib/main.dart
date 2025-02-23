import 'package:flutter/material.dart';
import 'package:shoppe/view/authscreens/loginscreen.dart';
import 'package:shoppe/view/authscreens/registerscreen.dart';
import 'package:shoppe/view/startscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        useMaterial3: true,
      ),
      initialRoute: 'startScreen',
      routes: {
        'startScreen': (context) => Startscreen(),
        'registerScreen': (context) => Registerscreen(),
        'loginScreen': (context) => LoginScreen(),
      },
    );
  }
}
