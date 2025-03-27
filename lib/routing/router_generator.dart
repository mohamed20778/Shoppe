import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoppe/core/theme/app_style.dart';
import 'package:shoppe/routing/app_routes.dart';
import 'package:shoppe/view/auth/loginscreen.dart';
import 'package:shoppe/view/auth/passworscreen.dart';
import 'package:shoppe/view/auth/registerscreen.dart';
import 'package:shoppe/view/home/cart_screen.dart';
import 'package:shoppe/view/home/favourite_screen.dart';
import 'package:shoppe/view/home/home_screen.dart';
import 'package:shoppe/view/home/shop_screen.dart';
import 'package:shoppe/view/onboarding_screen.dart';
import 'package:shoppe/view/settings/profile_screen.dart';
import 'package:shoppe/view/start_screen.dart';

class RouterGenerator {
  static GoRouter mainRoutingOurApp = GoRouter(
      initialLocation: AppRoutes.startScreen,
      errorBuilder: (context, state) => Scaffold(
            body: Center(
              child: Text(
                "this route doesn't exist",
                style: AppStyle.headlinestyle1(context),
              ),
            ),
          ),
      routes: [
        GoRoute(
          name: AppRoutes.startScreen,
          path: AppRoutes.startScreen,
          builder: (context, state) => const Startscreen(),
        ),
        GoRoute(
          name: AppRoutes.onboardingScreen,
          path: AppRoutes.onboardingScreen,
          builder: (context, state) => const HelloScreen(),
        ),
        GoRoute(
          name: AppRoutes.signUpScreen,
          path: AppRoutes.signUpScreen,
          builder: (context, state) => const Registerscreen(),
        ),
        GoRoute(
          name: AppRoutes.loginScreen,
          path: AppRoutes.loginScreen,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          name: AppRoutes.passwordScreen,
          path: AppRoutes.passwordScreen,
          builder: (context, state) => const PasswordScreen(),
        ),
        GoRoute(
          name: AppRoutes.shopScreen,
          path: AppRoutes.shopScreen,
          builder: (context, state) => const ShopPage(),
        ),
        GoRoute(
          name: AppRoutes.profileScreen,
          path: AppRoutes.profileScreen,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          name: AppRoutes.homeScreen,
          path: AppRoutes.homeScreen,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          name: AppRoutes.cartScreen,
          path: AppRoutes.cartScreen,
          builder: (context, state) => const CartScreen(),
        ),
        GoRoute(
          name: AppRoutes.favouriteScreen,
          path: AppRoutes.favouriteScreen,
          builder: (context, state) => const FavouriteScreen(),
        ),
      ]);
}
