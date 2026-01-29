import '../../../domain/entitys/auth_response_entity.dart';

abstract class RemoteDataSource {
  Future<AuthResponseEntity> signUp({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  });
  Future<AuthResponseEntity> signIn({
    required String email,
    required String password,
  });
  Future<String> forgotPasswords({required String email});
  Future<String> verifyResetCode({required String resetCode});
}
