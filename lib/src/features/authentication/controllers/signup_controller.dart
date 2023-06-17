import 'package:flutter_app_with_firebase/src/repository/authenticaiton_repository/authenticaiton_repository.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this Function from Design & it will do the rest
  void registerUser(String email, String password) {
    String error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String;
    if (error == null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  //call phoneNo form user and pass it to auth Repository for firebase authentication
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
