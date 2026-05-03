part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String token;
  final String role;
  final String username;

  AuthSuccess({
    required this.token,
    required this.role,
    required this.username,
  });
}

class AuthError extends AuthState {
  final String message;

  AuthError({required this.message});
}
