import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/controllers/signup_controller.dart';
import 'package:get/get.dart';

import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: sFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(label: Text(sFullName), prefixIcon: Icon(Icons.person_outline)),
            ),
            SizedBox(height: sFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(label: Text(sEmail), prefixIcon: Icon(Icons.email_outlined)),
            ),
            SizedBox(height: sFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(label: Text(sPhoneNo), prefixIcon: Icon(Icons.phone_android)),
            ),
            SizedBox(height: sFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(label: Text(sPassword), prefixIcon: Icon(Icons.fingerprint_outlined)),
            ),
            SizedBox(height: sFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('pressssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss 000000');
                  if (_formKey.currentState!.validate()) {
                    print('presssssssssssssssssssssss        _formKey.currentState!.validate()      sssssssssssssssssssssssss 000000');

                    SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                  }
                },
                child: Text(sSignUp.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
