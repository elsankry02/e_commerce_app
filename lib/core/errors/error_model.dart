class ErrorModel {
  final String statusMsg;
  final String message;

  ErrorModel({required this.statusMsg, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      ErrorModel(statusMsg: json["statusMsg"], message: json["message"]);

  Map<String, dynamic> toJson() => {"statusMsg": statusMsg, "message": message};
}
