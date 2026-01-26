import 'package:e_commerce_app/features/auth/domain/entitys/user_entity.dart';

abstract class RemoteDataSource {
  Future<UserEntity> signUp({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  });
  Future<UserEntity> signIn({required String email, required String password});
  Future<String> forgotPasswords({required String email});
  Future<void> verifyResetCode({required String resetCode});
}
