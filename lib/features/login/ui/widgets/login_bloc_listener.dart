import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrcode/core/helpers/custom_snack_bar.dart';
import 'package:mrcode/core/helpers/extensions.dart';
import 'package:mrcode/features/login/logic/cubit/login_cubit.dart';

import '../../../../core/helpers/setup_dialogs.dart';
import '../../../../core/routing/routes.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.pop();
          customSnackBar(context, 'Login Successfuly');
          context.pushReplacementNamed(Routes.homeScreen);
        } else if (state is LoginFailure) {
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
