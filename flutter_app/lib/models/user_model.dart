import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String username;

  @HiveField(2)
  late String email;

  @HiveField(3)
  late String role;

  @HiveField(4)
  late String? token;

  @HiveField(5)
  late String? matricule;

  @HiveField(6)
  late String? faculty;

  @HiveField(7)
  late DateTime createdAt;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.role,
    this.token,
    this.matricule,
    this.faculty,
    required this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'].toString(),
      username: json['username'],
      email: json['email'],
      role: json['role'],
      token: json['token'],
      matricule: json['matricule'],
      faculty: json['faculty'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'role': role,
      'token': token,
      'matricule': matricule,
      'faculty': faculty,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
