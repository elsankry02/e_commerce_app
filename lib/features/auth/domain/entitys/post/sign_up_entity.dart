class SignUpEntity {
  final String name;
  final String email;
  final String password;
  final String rePassword;
  final String phone;

  SignUpEntity({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.rePassword,
  });
}
