import 'package:e_commerce_app/features/auth/domain/entitys/sub_entity/user_entity.dart';

class AuthResponseEntity {
  final String message;
  final UserEntity user;
  final String token;

  AuthResponseEntity({
    required this.message,
    required this.user,
    required this.token,
  });
}
