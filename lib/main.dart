import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/view/auth/loginscreen.dart';
import 'package:shoppe/view/auth/registerscreen.dart';
import 'package:shoppe/view/startscreen.dart';

void main() {
  runApp(const MyApp());
}

@override
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Match your design size
      minTextAdapt: true, // Ensure text scales properly
      splitScreenMode: true, // Support split-screen mode
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling, // Disable system text scaling
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shoppe',
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
      },
    );
  }
}
