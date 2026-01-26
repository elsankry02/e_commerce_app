import 'package:e_commerce_app/features/auth/domain/entitys/sub_entity/user_entity.dart';

class AuthResponseEntity {
  final String messageEn;
  final UserEntity userEn;
  final String tokenEn;

  AuthResponseEntity({
    required this.messageEn,
    required this.userEn,
    required this.tokenEn,
  });
}
