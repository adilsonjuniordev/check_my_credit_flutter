import 'package:check_my_credito/app/screens/login_screen.dart';
import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/logo_splash.png"),
      logoSize: 120,
      backgroundColor: MyColors.primary,
      showLoader: false,
      durationInSeconds: 3,
      navigator: const LoginScreen(),
    );
  }
}
