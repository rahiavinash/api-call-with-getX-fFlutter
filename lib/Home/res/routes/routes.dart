import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_call/Home/res/routes/routes_name.dart';
import 'package:rest_api_call/view/Login.dart';
import 'package:rest_api_call/view/SplashScreen.dart';
import 'package:rest_api_call/view/WebViewHome/WebViewHome.dart';
class AppRoutes{
  static appRoutes() => [
    GetPage(name: RoutesName.splashScreen, page: ()=> Splashscreen( ),
    transitionDuration: Duration(microseconds:200),
      transition: Transition.leftToRightWithFade
    ),

    GetPage(name: RoutesName.webView, page: ()=> WebViewHome(),
        transitionDuration: Duration(microseconds:200),
        transition: Transition.leftToRightWithFade
    ),

    GetPage(name: RoutesName.logInScreen, page: ()=> Login(),
        transitionDuration: Duration(microseconds:200),
        transition: Transition.leftToRightWithFade
    )
  ];

}