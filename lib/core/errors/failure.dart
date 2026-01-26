class Failure {
  final String message;

  Failure({required this.message});

  factory Failure.fromJson(Map<String, dynamic> json) =>
      Failure(message: json["message"]);

  Map<String, dynamic> toJson() => {"message": message};
}
