import 'package:e_commerce_app/features/auth/domain/entitys/sub_entity/user.dart';

class UserEntity {
  final String messageEn;
  final User userEn;
  final String tokenEn;

  UserEntity({
    required this.messageEn,
    required this.userEn,
    required this.tokenEn,
  });
}
