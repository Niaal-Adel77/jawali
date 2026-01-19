import 'package:flutter/material.dart';
import 'View/splashScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyAppRoot());
}

class MyAppRoot extends StatelessWidget {
  const MyAppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
