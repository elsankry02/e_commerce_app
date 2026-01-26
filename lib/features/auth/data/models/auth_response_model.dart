import 'package:e_commerce_app/features/auth/data/models/sub_model/user_model.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/auth_response_entity.dart';

class AuthResponseModel extends AuthResponseEntity {
  final String message;
  final UserModel user;
  final String token;

  AuthResponseModel({
    required this.message,
    required this.user,
    required this.token,
  }) : super(messageEn: message, userEn: user, tokenEn: token);

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
