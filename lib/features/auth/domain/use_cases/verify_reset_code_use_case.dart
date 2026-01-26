import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repos.dart';

class VerifyResetCodeUseCase {
  final AuthRepos authRepos;

  VerifyResetCodeUseCase({required this.authRepos});

  Future<Either<Failure, Unit>> verifyResetCode({
    required String resetCode,
  }) async {
    return await authRepos.verifyResetCode(resetCode: resetCode);
  }
}
