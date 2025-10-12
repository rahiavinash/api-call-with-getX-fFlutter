import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rest_api_call/Repository/login_repository.dart';
import 'package:rest_api_call/Utils/utils.dart';


class LogInViewModel extends GetxController {
  final _api = LoginRepository();
  RxBool loading = false.obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusController = FocusNode().obs;
  final passwordFocusController = FocusNode().obs;


  void LoginApi({required Function onSuccess}) {
    loading.value = true;
    Map<String, String> data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api
        .LoginApi(data)
        .then((value) {
      if (value == null) {
        loading.value = false;
        Utils.toastMessage("Api failed");
      } else {
        var data = value;
        onSuccess() {
          data;
        }
        print(data['success']);

        loading.value = false;
        // Handle the response here
        print("loginResponse : $data ");
        if(data['success'] as bool){

        }
        Utils.toastMessage(data['message']);
      }
    }

  )

      .

  catchError

  (

  (error) {
  print(error.toString());
  loading.value = false ;
  Utils.toastMessage(error.toString());
  });
}


}