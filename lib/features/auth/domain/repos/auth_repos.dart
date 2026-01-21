import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure.dart';
import 'package:e_commerce_app/features/auth/domain/entity/auth_entity/update_logged_user_password_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/get/user_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/get/users_query_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/post/forget_password_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/post/sign_in_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/post/sign_up_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/post/verify_reset_code_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/put/reset_password_entity.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/put/update_logged_user_data_entity.dart';

abstract class AuthRepos {
  // Post
  Future<Either<Failure, SignUpEntity>> signUp({
    required SignUpEntity signUpEntity,
  });
  Future<Either<Failure, SignInEntity>> signIn({
    required SignInEntity signInEntity,
  });
  Future<Either<Failure, Unit>> forgetPassword({
    required ForgetPasswordEntity forgetPasswordEntity,
  });
  Future<Either<Failure, Unit>> verifyResetCode({
    required VerifyResetCodeEntity verifyResetCodeEntity,
  });
  // Get
  Future<Either<Failure, List<UserEntity>>> getAllUsers({
    required UsersQueryEntity usersQueryEntity,
  });
  Future<Either<Failure, Unit>> verifyToken();
  // Put
  Future<Either<Failure, Unit>> resetPassword({
    required ResetPasswordEntity resetPasswordEntity,
  });
  Future<Either<Failure, Unit>> updateLoggedUserDataEntity({
    required UpdateLoggedUserDataEntity updateLoggedUserDataEntity,
  });
  Future<Either<Failure, Unit>> updateLoggedUserPasswordEntity({
    required UpdateLoggedUserPasswordEntity updateLoggedUserPasswordEntity,
  });
}
