import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_data.dart';
part 'login_response.g.dart';

@JsonSerializable()
class ApiResponseLogin {
  UserData? user;
  String? token;
  @JsonKey(name: "refrechtoken")
  String? refrechToken;

  ApiResponseLogin({this.user, this.token, this.refrechToken});

 factory  ApiResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseLoginFromJson(json);
}
