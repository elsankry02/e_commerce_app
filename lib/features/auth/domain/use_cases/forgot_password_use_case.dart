import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../repos/auth_repos.dart';

class ForgotPasswordUseCase {
  final AuthRepos authRepos;

  ForgotPasswordUseCase({required this.authRepos});
  Future<Either<Failure, String>> call({required String email}) async {
    return await authRepos.forgotPasswords(email: email);
  }
}
