part of 'auth_bloc.dart';

abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;
  final String role;

  LoginEvent({
    required this.username,
    required this.password,
    required this.role,
  });
}

class LogoutEvent extends AuthEvent {}

class RegisterEvent extends AuthEvent {
  final String username;
  final String password;
  final String email;
  final String role;

  RegisterEvent({
    required this.username,
    required this.password,
    required this.email,
    required this.role,
  });
}
