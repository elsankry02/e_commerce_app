class UpdateLoggedUserPasswordEntity {
  final String currentPassword;
  final String password;
  final String rePassword;

  UpdateLoggedUserPasswordEntity({
    required this.currentPassword,
    required this.password,
    required this.rePassword,
  });
}
