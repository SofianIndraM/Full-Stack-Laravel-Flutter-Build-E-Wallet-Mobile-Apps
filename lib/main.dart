import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/pages/sign-up-success.dart';
import 'package:bank_sha/ui/pages/sign-up_set_profile_page.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_ktp_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/home': (context) => HomePage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/sign-up-set-profile': (context) => SignUpSetProfilePage(),
        '/sign-up-set-ktp': (context) => SignUpSetKtpPage(),
        '/sign-up-success': (context) => SignUpPageSuccess(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
