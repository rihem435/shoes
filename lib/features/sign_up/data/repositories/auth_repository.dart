// import 'package:app/features/login/data/models/login_response.dart';

// import 'package:app/src/utils/api_client.dart';
// import 'package:app/src/utils/constants.dart';

// class AuthRepository {
//   static Future<ApiResponse<ApiReponseLogin>> login(dynamic data) async {
//     ApiClient apiClient = ApiClient();
//     ApiResponse<ApiReponseLogin> apiResponse = ApiResponse();

//     try {
//       apiResponse =
//           await apiClient.postRequest(Constants.urlAuthLogin, data: data);
//       return apiResponse;
//     } catch (error) {
//       return apiResponse;
//     }
//   }

//   static Future<ApiResponse<User>> register(dynamic data) async {
//     ApiClient apiClient = ApiClient();
//     ApiResponse<User> apiReponse = ApiResponse();
//     try {
//       apiReponse =
//           await apiClient.postRequest(Constants.urlAuthRegister, data: data);

//       return apiReponse;
//     } catch (error) {
//       return apiReponse;
//     }
//   }

//   static Future<ApiResponse<User>> logOut(dynamic data) async {
//     ApiClient apiClient = ApiClient();
//     ApiResponse<User> apiReponse = ApiResponse();
//     try {
//       apiReponse =
//           await apiClient.postRequest(Constants.urlAuthRegister, data: data);
//       return apiReponse;
//     } catch (error) {
//       return apiReponse;
//     }
//   }

//   static Future<ApiResponse<User>> getProfile() async {
//     ApiClient apiClient = ApiClient();
//     ApiResponse<User> apiReponse = ApiResponse();
//     try {
//       apiReponse = await apiClient.getRequest(Constants.urlUserProfile);

//       return apiReponse;
//     } catch (error) {
//       return apiReponse;
//     }
//   }

//   static Future<ApiResponse<ApiReponseLogin>> refreshToken() async {
//     ApiClient apiClient = ApiClient();
//     ApiResponse<ApiReponseLogin> apiReponse = ApiResponse();
//     try {
//       apiReponse = await apiClient.postRequest(Constants.urlAuthRefreshToken);

//       return apiReponse;
//     } catch (error) {
//       return apiReponse;
//     }
//   }
// }
