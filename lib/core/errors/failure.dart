class Failure {
  final String statusMsg;
  final String message;

  Failure({required this.statusMsg, required this.message});

  factory Failure.fromJson(Map<String, dynamic> json) =>
      Failure(statusMsg: json["statusMsg"], message: json["message"]);

  Map<String, dynamic> toJson() => {"statusMsg": statusMsg, "message": message};
}
