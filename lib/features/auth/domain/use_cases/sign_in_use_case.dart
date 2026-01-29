import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entitys/auth_response_entity.dart';
import '../repos/auth_repos.dart';

class SignInUseCase {
  final AuthRepos authRepos;

  SignInUseCase({required this.authRepos});

  Future<Either<Failure, AuthResponseEntity>> call({
    required String email,
    required String password,
  }) async {
    final response = await authRepos.signIn(email: email, password: password);
    return response.fold((failure) => left(failure), (user) async {
      final token = user.tokenEn;
      await authRepos.saveToken(token: token);
      return right(user);
    });
  }
}
