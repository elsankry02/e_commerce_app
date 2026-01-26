import 'package:e_commerce_app/features/auth/data/data_sourses/remote_data/remote_data_source.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/auth_response_entity.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<String> forgotPasswords({required String email}) {
    // TODO: implement forgotPasswords
    throw UnimplementedError();
  }

  @override
  Future<AuthResponseEntity> signIn({
    required String email,
    required String password,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<AuthResponseEntity> signUp({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<void> verifyResetCode({required String resetCode}) {
    // TODO: implement verifyResetCode
    throw UnimplementedError();
  }
}
