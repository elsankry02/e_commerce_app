import 'package:e_commerce_app/features/auth/data/models/sub_model/user_model.dart';

class AuthResponseModel {
  final String message;
  final UserModel user;
  final String token;

  AuthResponseModel({
    required this.message,
    required this.user,
    required this.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        message: json["message"],
        user: UserModel.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user": user.toJson(),
    "token": token,
  };
}
