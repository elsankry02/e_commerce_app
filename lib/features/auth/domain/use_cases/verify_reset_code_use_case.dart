import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../repos/auth_repos.dart';

class VerifyResetCodeUseCase {
  final AuthRepos authRepos;

  VerifyResetCodeUseCase({required this.authRepos});

  Future<Either<Failure, Unit>> verifyResetCode({
    required String resetCode,
  }) async {
    return await authRepos.verifyResetCode(resetCode: resetCode);
  }
}
