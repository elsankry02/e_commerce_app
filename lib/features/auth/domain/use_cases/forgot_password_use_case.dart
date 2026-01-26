import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repos.dart';

class ForgotPasswordUseCase {
  final AuthRepos authRepos;

  ForgotPasswordUseCase({required this.authRepos});
  Future<Either<Failure, String>> call({required String email}) async {
    return await authRepos.forgotPasswords(email: email);
  }
}
