class ApiConstants {
  static const baseUrl = "http://192.168.1.159:3001/";
  // Endpoints of user
  static const loginUrl = "${baseUrl}auth/login";
  static const signUpUrl = "${baseUrl}auth/login";
  static const urlUserProfile = "${baseUrl}auth/profile";
  static const urlAuthRefreshToken = "${baseUrl}auth/refreshToken";

  // Endpoints of product
  static const urlCreateProduct = "${baseUrl}product/create";
  static const urlGetProduct = "${baseUrl}product/get";

  
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
