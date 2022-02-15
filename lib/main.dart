import 'package:check_my_credito/app/screens/init.dart';
import 'package:check_my_credito/app/screens/splash.dart';
import 'package:check_my_credito/app/ui/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.myTheme,
      home: const Init(),
    );
  }
}
