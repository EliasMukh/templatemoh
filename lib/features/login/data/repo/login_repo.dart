import 'package:templatemoh/core/networking/api_error_handler.dart';
import 'package:templatemoh/core/networking/api_result.dart';
import 'package:templatemoh/core/networking/api_service.dart';
import 'package:templatemoh/features/login/data/models/login_request_body.dart';
import 'package:templatemoh/features/login/data/models/login_response_body.dart';

//! بالمختصر ال اب اي سيرفيس هو المفتاح لي بيستخدمو الريبو ليتصل بال اب اي
class LoginRepo {
  final ApiService _apiService; //! ➊ تعريف متغير خاص (ApiService)

  LoginRepo(this._apiService); //! ➋ كونستركتور يأخذ ApiService من بره

  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginRequest,
  ) async {
    try {
      final response = await _apiService.login(
        loginRequest,
      ); //! ➌ نطلب من ApiService ينفذ login
      return ApiResult.success(response); //! ➍ لو نجح، نرجع ApiResult.success
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      ); //! ➎ لو صار خطأ، نرجع ApiResult.failure
    }
  }
}



/*
ليش مكتوب بهالشكل؟

➊//! _apiService: هذا هو "المفتاح" اللي يخليك تتواصل مع الـ API (لكن LoginRepo ما يعرف تفاصيل Dio).

➋//! LoginRepo(this._apiService): لما تنشئ LoginRepo لازم تعطيه نسخة من ApiService. هذي الفكرة اسمها dependency injection (الاعتماد يُمرر من الخارج).

➌//!  استدعاء _apiService.login: هنا Repo ما يكتب كود Dio بنفسه، هو بس يستعمل الخدمة الجاهزة.

➍ //! + ➎ ApiResult: مغلف (Wrapper) يخلي دالة ترجع إما نجاح أو فشل بدل ما نستخدم try/catch في كل مكان.
 */