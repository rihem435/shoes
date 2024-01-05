import 'package:app/core/networking/api_constants.dart';
import 'package:app/core/networking/api_response.dart';
import 'package:app/features/login/data/models/login_request_body.dart';
import 'package:app/features/login/data/models/login_response.dart';
import 'package:app/features/sign_up/data/models/api_reponse_login.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

//@module  
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  //@factoryMethod
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginUrl)
  Future<ApiResponse<ApiResponseLogin>> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
