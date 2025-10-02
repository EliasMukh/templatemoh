import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templatemoh/core/networking/api_result.dart';
import 'package:templatemoh/features/login/logic/cubit/login_state.dart';
import 'package:templatemoh/features/login/data/models/login_request_body.dart';
import 'package:templatemoh/features/login/data/models/login_response_body.dart';
import 'package:templatemoh/features/login/data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitloginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (LoginResponseBody loginResponseBody) {
        emit(LoginState.success(loginResponseBody));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
