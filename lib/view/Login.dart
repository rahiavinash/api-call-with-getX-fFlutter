import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_call/view_models/Controller/login_viewmodel.dart';

import '../Home/res/routes/routes_name.dart';
import '../Utils/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginVM = Get.put(LogInViewModel());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: loginVM.emailController.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.toastMessage("Enter Email ");
                          return;
                        }
                      },
                      onFieldSubmitted: (value) {
                        Utils.fieldFocusChange(
                            context,
                            loginVM.emailFocusController.value,
                            loginVM.passwordFocusController.value);
                      },
                      focusNode: loginVM.emailFocusController.value,
                      decoration: InputDecoration(hintText: 'Email'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: loginVM.passwordController.value,
                obscureText: true,
                obscuringCharacter: "*",
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.toastMessage("Enter Password ");
                    return;
                  }
                },
                focusNode: loginVM.passwordFocusController.value,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
          //      loading : loginVM.loading.value
                  onPressed: () {
                  //    Get.toNamed(RoutesName.webView );
                    if (formKey.currentState!.validate()) {
                      // print(formKey.currentState!.validate());
                      loginVM.LoginApi(onSuccess: (){});

                    }
                  },
                  child: Text("Log in"))
            ]),
      ),
    );
  }
}
