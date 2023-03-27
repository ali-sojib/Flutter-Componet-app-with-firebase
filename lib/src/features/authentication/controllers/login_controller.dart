import 'package:flutter_app_with_firebase/src/repository/authenticaiton_repository/authenticaiton_repository.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  //Call this Function from Design & it will do the rest
  void loginUser(String email, String password) {
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }
}
