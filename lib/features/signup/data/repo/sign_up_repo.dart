import 'package:dio/dio.dart';
import 'package:templatemoh/core/networking/api_error_handler.dart';
import 'package:templatemoh/core/networking/api_result.dart';
import 'package:templatemoh/core/networking/api_service.dart';
import 'package:templatemoh/features/signup/data/models/sign_up_request_body.dart';
import 'package:templatemoh/features/signup/data/models/sign_up_response_body.dart';

class SignUpRepo {
  final ApiService _apiservice;
  SignUpRepo(this._apiservice);

  Future<ApiResult<SignUpResponseBody>> signup(
    SignUpRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiservice.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
