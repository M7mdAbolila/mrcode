import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/helpers/spacing.dart';
import 'package:mrcode/core/theme/styles.dart';
import 'package:mrcode/core/widgets/custom_scaffold.dart';
import 'package:mrcode/features/login/ui/widgets/auth_button.dart';
import 'package:mrcode/features/signup/ui/widgets/have_account_text.dart';
import 'package:mrcode/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:mrcode/features/signup/ui/widgets/signup_form.dart';

import '../logic/cubit/signup_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        appBarTitle: 'Sign Up',
        appBarIcon: const Icon(Icons.arrow_back, color: Colors.white),
        appBarOnPressed: () => context.pop(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/svgs/signup.svg',
                width: 200.w,
              ),
              Text(
                "Great to see you here!",
                style: AppStyles.font26Blue700Weight,
              ),

              verticalSpace(25),
              const SignupForm(),
              verticalSpace(40),
              AuthButton(
                text: 'Sign Up',
                onTap: () {
                  if (context
                      .read<SignupCubit>()
                      .signupFormKey
                      .currentState!
                      .validate()) {
                    context.read<SignupCubit>().signupWithEmailAndPassword(
                          context.read<SignupCubit>().emailController.text,
                          context.read<SignupCubit>().passwordController.text,
                        );
                  }
                },
              ),
              // verticalSpace(30),
              // const SocialMediaSignup(),
              verticalSpace(30),
              const HaveAnAccountText(),
              const SignupBlocListener(),
              verticalSpace(200),
            ],
          ),
        ),
      ),
    );
  }
}
