import 'package:flutter/material.dart';

import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: sFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(sFullName),
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            SizedBox(height: sFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(sEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: sFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(sPhoneNo),
                prefixIcon: Icon(Icons.phone_android),
              ),
            ),
            SizedBox(height: sFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(sPassword),
                prefixIcon: Icon(Icons.fingerprint_outlined),
              ),
            ),
            SizedBox(height: sFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(sSignUp.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
