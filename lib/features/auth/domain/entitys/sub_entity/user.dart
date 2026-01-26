
class User {
  final String name;
  final String email;
  final String role;

  User({required this.name, required this.email, required this.role});

  factory User.fromJson(Map<String, dynamic> json) =>
      User(name: json["name"], email: json["email"], role: json["role"]);

  Map<String, dynamic> toJson() => {"name": name, "email": email, "role": role};
}
