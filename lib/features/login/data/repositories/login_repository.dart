import 'package:app/core/networking/api_error_handler.dart';
import 'package:app/core/networking/api_response.dart';
import 'package:app/core/networking/api_result.dart';
import 'package:app/core/networking/api_service.dart';
import 'package:app/features/login/data/models/login_request_body.dart';
import 'package:app/features/login/data/models/login_response.dart';
import 'package:injectable/injectable.dart';
//@injectable  
class LoginRepository {
  final ApiService _apiService;

  LoginRepository({required ApiService apiService}) : _apiService = apiService;
  Future<ApiResult<ApiResponse<ApiResponseLogin>>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  // static Future<ApiResult<ApiResponse<ApiResponseLogin>>> login(dynamic data) async {

  //   ApiResponse<ApiReponseLogin> apiResponse = ApiResponse();

  //   try {
  //     apiResponse =
  //         await apiClient.postRequest(Constants.urlAuthLogin, data: data);
  //     return apiResponse;
  //   } catch (error) {
  //     return apiResponse;
  //   }
  // }

  // static Future<ApiResponse<User>> register(dynamic data) async {
  //   ApiClient apiClient = ApiClient();
  //   ApiResponse<User> apiReponse = ApiResponse();
  //   try {
  //     apiReponse =
  //         await apiClient.postRequest(Constants.urlAuthRegister, data: data);

  //     return apiReponse;
  //   } catch (error) {
  //     return apiReponse;
  //   }
  // }

  // static Future<ApiResponse<User>> logOut(dynamic data) async {
  //   ApiClient apiClient = ApiClient();
  //   ApiResponse<User> apiReponse = ApiResponse();
  //   try {
  //     apiReponse =
  //         await apiClient.postRequest(Constants.urlAuthRegister, data: data);
  //     return apiReponse;
  //   } catch (error) {
  //     return apiReponse;
  //   }
  // }

  // static Future<ApiResponse<User>> getProfile() async {
  //   ApiClient apiClient = ApiClient();
  //   ApiResponse<User> apiReponse = ApiResponse();
  //   try {
  //     apiReponse = await apiClient.getRequest(Constants.urlUserProfile);

  //     return apiReponse;
  //   } catch (error) {
  //     return apiReponse;
  //   }
  // }

  // static Future<ApiResponse<ApiReponseLogin>> refreshToken() async {
  //   ApiClient apiClient = ApiClient();
  //   ApiResponse<ApiReponseLogin> apiReponse = ApiResponse();
  //   try {
  //     apiReponse = await apiClient.postRequest(Constants.urlAuthRefreshToken);

  //     return apiReponse;
  //   } catch (error) {
  //     return apiReponse;
  //   }
  // }
}
