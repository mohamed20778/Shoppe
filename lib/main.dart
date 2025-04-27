import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/cubits/simple_bloc_opserver.dart';
import 'package:shoppe/routing/router_generator.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = SimpleBlocOpserver();
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
            textScaler: TextScaler.noScaling,
          ),
          child: MaterialApp.router(
            routerConfig: RouterGenerator.mainRoutingOurApp,
            debugShowCheckedModeBanner: false,
            title: 'Shoppe',
            theme: ThemeData(
              colorScheme: const ColorScheme.light(),
              useMaterial3: true,
            ),
          ),
        );
      },
    );
  }
}
