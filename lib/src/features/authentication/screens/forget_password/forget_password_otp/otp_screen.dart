import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/controllers/otp_controller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant/sizes.dart';
import '../../../../../constant/text_strings.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(sDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sOtpTitle,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 80.0),
            ), // Text
            Text(sOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 40.0),
            const Text(
              "$sOtpMessage ali.sojib.dev@gmail.com",
              textAlign: TextAlign.center,
            ), // Text
            const SizedBox(height: 20.0),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                otp = code;
                OTPController.instance.verifyOTP(otp);
                print("OTP is => $code");
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: const Text(sNext)),
            ),
          ],
        ),
      ),
    );
  }
}
