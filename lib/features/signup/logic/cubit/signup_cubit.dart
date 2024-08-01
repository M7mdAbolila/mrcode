import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrcode/core/helpers/auth_service.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  final signupFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  Future<void> signupWithEmailAndPassword(String email, String password) async {
    emit(SignupLoading());
    final String? message = await AuthService().signup(
      email: email,
      password: password,
    );
    if (message!.contains('Success')) {
      emit(
        SignupSuccess(),
      );
    } else {
      emit(
        SignupFailure(errMessage: message),
      );
    }
  }

}
