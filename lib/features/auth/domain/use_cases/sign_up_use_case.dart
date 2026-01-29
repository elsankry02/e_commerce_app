import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entitys/auth_response_entity.dart';
import '../repos/auth_repos.dart';

class SignUpUseCase {
  final AuthRepos authRepos;

  SignUpUseCase({required this.authRepos});

  Future<Either<Failure, AuthResponseEntity>> call({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  }) async {
    final response = await authRepos.signUp(
      name: name,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone,
    );
    return response.fold((failure) => left(failure), (user) async {
      final token = user.tokenEn;
      await authRepos.saveToken(token: token);
      return right(user);
    });
  }
}
