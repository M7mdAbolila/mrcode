import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObscureText = true;
  bool confirmtIsObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter valid email';
              }
            },
          ),
          verticalSpace(20),
          AppTextFormField(
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter valid password';
              }
            },
          ),
          verticalSpace(20),
          AppTextFormField(
            hintText: "Confirm password",
            isObscureText: confirmtIsObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  confirmtIsObscureText = !confirmtIsObscureText;
                });
              },
              child: Icon(
                confirmtIsObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password confirmation does not match';
              }
            },
          ),
        ],
      ),
    );
  }
}
