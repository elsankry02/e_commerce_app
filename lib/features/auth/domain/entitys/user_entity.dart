import 'package:e_commerce_app/features/auth/domain/entitys/sub_entity/user.dart';

class UserEntity {
  final String message;
  final User user;
  final String token;

  UserEntity({required this.message, required this.user, required this.token});

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
    message: json["message"],
    user: User.fromJson(json["user"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user": user.toJson(),
    "token": token,
  };
}
