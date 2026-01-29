import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entitys/auth_response_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, AuthResponseEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  });
  Future<Either<Failure, AuthResponseEntity>> signIn({
    required String email,
    required String password,
  });
  Future<Either<Failure, String>> forgotPasswords({required String email});
  Future<Either<Failure, Unit>> verifyResetCode({required String resetCode});

  // Token
  Future<void> saveToken({required String token});
  Future<String?> getToken();
}
