import 'package:dio/dio.dart';
import 'package:templatemoh/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:templatemoh/features/login/data/models/login_request_body.dart';
import 'package:templatemoh/features/login/data/models/login_response_body.dart';

part 'api_service.g.dart';

@RestApi(
  baseUrl: ApiConstants.apiBaseUrl,
) //! تقول لRetrofit: "هذا الكلاس هو واجهة REST وكل طلباته تبدأ من هذا الرابط الأساسي".
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody body);
}


//! جميع البيانات في الاعلى عبارة عن بيانات لكي نضعها بقالب يولدها الريتروفيت 

/*
///! هذا مثال عن الذي يولده الريتروفيت  
///!class _ApiService implements ApiService {
///!  _ApiService(this._dio, {this.baseUrl});
///!
///!  final Dio _dio;
///!  String? baseUrl;
///!
///!  @override
///!  Future<LoginResponseBody> login(LoginRequestBody body) async {
///!    final response = await _dio.post(
///!      '/login',
///!      data: body.toJson(),
///!    );
///!    return LoginResponseBody.fromJson(response.data);
///!  }
///!}
 */



/*
@POST(ApiConstants.login)

هذا Annotation من مكتبة retrofit.

معناه: هذا الميثود سيمثل طلب POST إلى السيرفر.

ApiConstants.login يحتوي على الـ endpoint مثل:

class ApiConstants {
  static const String apiBaseUrl = "https://api.example.com";
  static const String login = "/auth/login";
}

النتيجة: عند استدعاء login(...)، Retrofit سيبني طلب POST إلى:

https://api.example.com/auth/login

//!

2️⃣ Future<LoginResponseBody>

الدالة login async وترجع Future (أي نتيجة مستقبلية بعد انتهاء الطلب).

النتيجة المتوقعة من السيرفر يتم تحويلها إلى كائن Dart من نوع LoginResponseBody.

يعني بدل ما ترجع JSON عادي، ترجع Object جاهز للتعامل.

3️⃣ login(@Body() LoginRequestBody body)

اسم الدالة: login، تمثل العملية.

المعامل: LoginRequestBody body هو البيانات المرسلة في الطلب (request body).

@Body() تقول لـ Retrofit: "خذ هذا الكائن وحوله إلى JSON وأرسله في جسم طلب POST".

مثال:

final request = LoginRequestBody(email: "test@mail.com", password: "123456");

final response = await apiService.login(request);


هنا:

request يتم تحويله إلى JSON:

{
  "email": "test@mail.com",
  "password": "123456"
}


يرسله للسيرفر كـ body لطلب POST.

السيرفر يرد بـ JSON (مثلاً token + user info).

Retrofit يحوله إلى LoginResponseBody.
*/

