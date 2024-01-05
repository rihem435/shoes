import 'package:freezed_annotation/freezed_annotation.dart';
  part 'user_data.g.dart';
@JsonSerializable()
class UserData {
  @JsonKey(name: "_id")
  String? sId;
  @JsonKey(name: "username")
  String? userName;
  String? email;
  String? phone;
  String? password;
  List<String>? produits;
  String? itemKey;
  @JsonKey(name: "__v")
  int? iV;

  UserData(
      {this.sId,
      this.userName,
      this.email,
      this.phone,
      this.password,
      this.produits,
      this.itemKey,
      this.iV});

 factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
