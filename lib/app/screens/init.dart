import 'package:check_my_credito/app/screens/splash.dart';
import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class Init extends StatefulWidget {
  const Init({Key? key}) : super(key: key);

  @override
  _InitState createState() => _InitState();
}

class _InitState extends State<Init> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/logo_splash.png"),
      logoSize: 120,
      backgroundColor: MyColors.primary,
      showLoader: false,
      durationInSeconds: 5,
      navigator: const Splash(),
    );
  }
}
