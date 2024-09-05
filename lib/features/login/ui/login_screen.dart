import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/widgets/custom_scaffold.dart';
import 'package:mrcode/features/login/ui/widgets/login_bloc_listener.dart';

import '../../../core/theme/styles.dart';
import '../logic/cubit/login_cubit.dart';
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
              SvgPicture.asset(
                'assets/svgs/login.svg',
                width: 200.w,
              ),
              Text(
                'Let\'s sign you in',
                style: AppStyles.font26Blue700Weight,
              ),
              Text(
                'welcome back, you have been missed.',
                style: AppStyles.font16Black400Weight,
              ),
              verticalSpace(40),
              const UsernameAndPassword(),
              verticalSpace(50),
              AuthButton(
                text: 'Sign in',
                onTap: () {
                  if (context
                      .read<LoginCubit>()
                      .loginFormKey
                      .currentState!
                      .validate()) {
                    context.read<LoginCubit>().loginWithEmailAndPassword();
                  }
                },
              ),
              verticalSpace(30),
              const DontHaveAccount(),
              const LoginBlocListener(),
              verticalSpace(200),
            ],
          ),
        ),
      ),
    );
  }
}
