import 'package:flutter/material.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/theme/styles.dart';


class HaveAnAccountText extends StatelessWidget {
  const HaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pop();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Do you have an account ? ",
            style: AppStyles.font14Black400Weight,
          ),
          Text(
            'Sign Up',
            style: AppStyles.font14Blue400Weight,
          )
        ],
      ),
    );
  }
}
