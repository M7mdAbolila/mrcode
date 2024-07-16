import 'package:flutter/material.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/widgets/custome_button.dart';

class SocialMediaSignup extends StatelessWidget {
  const SocialMediaSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Divider()),
            Text(
              '   OR   ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(child: Divider()),
          ],
        ),
        verticalSpace(15),
        Row(
          children: [
            const Expanded(
              child: CustomButton(text: 'Google'),
            ),
            horizontalSpace(10),
            const Expanded(
              child: CustomButton(text: 'Facebook'),
            ),
          ],
        ),
      ],
    );
  }
}
