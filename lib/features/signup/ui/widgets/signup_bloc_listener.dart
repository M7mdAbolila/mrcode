// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrcode/core/helpers/custom_snack_bar.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/core/helpers/setup_dialogs.dart';
import 'package:mrcode/core/routing/routes.dart';
import 'package:mrcode/features/signup/logic/cubit/signup_cubit.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) async {
        if (state is SignupSuccess) {
          await SharedPrefHelper.setData(SharedPrefKeys.isLoggedIn, true);
          context.pop();
          customSnackBar(context, 'User Added Successfully');
          context.pushReplacementNamed(Routes.homeScreen);
        } else if (state is SignupFailure) {
          context.pop();
          customSnackBar(
            context,
            state.errMessage,
            color: Colors.red,
          );
        } else {
          loadingDialog(context);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
