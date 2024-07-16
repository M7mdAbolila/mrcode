import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/widgets/custom_scaffold.dart';
import 'package:mrcode/features/login/ui/widgets/social_media_login.dart';

import '../../../core/theme/styles.dart';
import 'widgets/auth_button.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/username_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        appBarIcon: const Icon(Icons.arrow_back, color: Colors.white),
        appBarOnPressed: () => context.pop(),
        appBarTitle: 'Login',
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              verticalSpace(35),
              Text(
                'Let\'s sign you in',
                style: AppStyles.font26Blue700Weight,
              ),
              Text(
                'welcome back, you have been mised.',
                style: AppStyles.font16Black400Weight,
              ),
              verticalSpace(50),
              const UsernameAndPassword(),
              verticalSpace(70),
              AuthButton(
                text: 'Sign in',
                onTap: () {},
              ),
              verticalSpace(40),
              const SocialMediaLogin(),
              verticalSpace(30),
              const DontHaveAccont(),
              verticalSpace(150),
            ],
          ),
        ),
      ),
    );
  }
}
