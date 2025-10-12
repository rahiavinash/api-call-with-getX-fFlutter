import 'package:flutter/material.dart';
import 'package:rest_api_call/Utils/utils.dart';
import 'package:rest_api_call/view_models/splash_service.dart';
import '';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  SplashServices splashscreen = SplashServices();

  @override
  void initState() {
    super.initState();
    splashscreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Text(
          "Welcome Abhiii",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("Welcome Abhii");
      }),
    );
  }
}
