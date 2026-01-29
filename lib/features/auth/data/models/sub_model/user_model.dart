import '../../../domain/entitys/sub_entity/user_entity.dart';

class UserModel extends UserEntity {
  final String name;
  final String email;
  final String role;

  UserModel({required this.name, required this.email, required this.role})
    : super(nameEn: name, emailEn: email, roleEn: role);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(name: json["name"], email: json["email"], role: json["role"]);

  Map<String, dynamic> toJson() => {"name": name, "email": email, "role": role};
}
