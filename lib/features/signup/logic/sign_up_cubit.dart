import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templatemoh/core/networking/api_result.dart';
import 'package:templatemoh/features/signup/data/models/sign_up_request_body.dart';
import 'package:templatemoh/features/signup/data/repo/sign_up_repo.dart';
import 'package:templatemoh/features/signup/logic/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupState() async {
    emit(SignUpState.signupLoading());
    final response = await _signUpRepo.signup(
      SignUpRequestBody(
        email: emailController.text,
        phone: phoneController.text,
        name: nameController.text,
        password: passwordController.text,
        confirmPassword: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (SignUpResponseBody) {
        emit(SignUpState.signupSuccess(SignUpResponseBody));
      },
      failure: (error) {
        emit(SignUpState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
