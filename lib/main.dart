import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_call/Home/res/routes/routes.dart';
import 'package:rest_api_call/view/SplashScreen.dart';
import 'Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    home: Splashscreen(),
    getPages: AppRoutes.appRoutes(),
    );
  }
}

