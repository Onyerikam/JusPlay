import '/core/app_export.dart';import 'package:jusplay/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';class LoginController extends GetxController {TextEditingController emailaddressController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailaddressController.dispose(); passwordController.dispose(); } 
 }
