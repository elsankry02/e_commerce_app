import 'package:e_commerce_app/core/databases/api/api_keys.dart';
import 'package:e_commerce_app/core/databases/api/dio_consumer.dart';
import 'package:e_commerce_app/core/databases/api/end_points.dart';
import 'package:e_commerce_app/features/auth/data/data_sourses/remote_data/remote_data_source.dart';
import 'package:e_commerce_app/features/auth/data/models/auth_response_model.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/auth_response_entity.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final DioConsumer dio;

  RemoteDataSourceImpl(this.dio);

  @override
  Future<AuthResponseEntity> signIn({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      EndPoints.signIn,
      data: {ApiKeys.email: email, ApiKeys.password: password},
    );
    final userData = response[ApiKeys.user] as Map<String, dynamic>;
    return AuthResponseModel.fromJson(userData);
  }

  @override
  Future<AuthResponseEntity> signUp({
    required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  }) async {
    final response = await dio.post(
      EndPoints.signUp,
      data: {
        ApiKeys.name: name,
        ApiKeys.email: email,
        ApiKeys.password: password,
        ApiKeys.rePassword: rePassword,
        ApiKeys.phone: phone,
      },
    );
    final userData = response[ApiKeys.user] as Map<String, dynamic>;
    return AuthResponseModel.fromJson(userData);
  }
}
