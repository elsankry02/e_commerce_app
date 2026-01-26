import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/user_entity.dart';
import 'package:e_commerce_app/features/auth/domain/repos/auth_repos.dart';

class SignUpUseCase {
  final AuthRepos authRepos;

  SignUpUseCase({required this.authRepos});

  Future<Either<Failure, UserEntity>> call({
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
      final token = user.token;
      await authRepos.saveToken(token: token);
      return right(user);
    });
  }
}
