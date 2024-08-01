import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrcode/core/helpers/auth_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   final loginFormKey = GlobalKey<FormState>();
  Future<void> loginWithEmailAndPassword() async {
    emit(LoginLoading());
    final String? message = await AuthService().login(
      email: emailController.text,
      password: passwordController.text,
    );
    if (message!.contains('Success')) {
      emit(
        LoginSuccess(),
      );
    } else {
      emit(
        LoginFailure(errMessage: message),
      );
    }
  }
}
