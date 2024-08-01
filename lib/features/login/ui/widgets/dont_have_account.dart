import 'package:flutter/material.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/theme/styles.dart';

import '../../../../core/routing/routes.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.signupScreen);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'don\'t have account?  ',
            style: AppStyles.font14Black400Weight,
          ),
          Text(
            'Register',
            style: AppStyles.font14Blue400Weight,
          )
        ],
      ),
    );
  }
}
