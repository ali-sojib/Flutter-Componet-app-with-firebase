import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_app_with_firebase/src/repository/authenticaiton_repository/authenticaiton_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(() => const Dashboard()) : Get.back();
  }
}
