import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/databases/api/api_keys.dart';
import 'package:e_commerce_app/core/databases/api/end_points.dart';
import 'package:e_commerce_app/features/auth/data/data_sourses/remote_data/remote_data_source.dart';
import 'package:e_commerce_app/features/auth/data/models/auth_response_model.dart';
import 'package:e_commerce_app/features/auth/domain/entitys/auth_response_entity.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final Dio dio;

  RemoteDataSourceImpl({required this.dio}) {
    dio.options = BaseOptions(
      baseUrl: ApiKeys.baseUrl,
      headers: {
        ApiKeys.contentType: ApiKeys.applicationJson,
        ApiKeys.accept: ApiKeys.all,
      },
    );
  }

  @override
  Future<AuthResponseEntity> signIn({
    required String email,
    required String password,
  }) async {
    final response = await dio.post(
      EndPoints.signIn,
      data: {ApiKeys.email: email, ApiKeys.password: password},
    );
    final data = response.data as Map<String, dynamic>;
    return AuthResponseModel.fromJson(data);
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
}
