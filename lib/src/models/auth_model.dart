import 'dart:convert';

class AuthModel {
  final String accesstoken;
  AuthModel({
    required this.accesstoken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accesstoken,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      accesstoken: (map['access_token'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
