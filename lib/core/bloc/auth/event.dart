part of 'bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class TryLogin extends AuthEvent{}

class AuthLoginChanged extends AuthEvent{
  final String login;

  AuthLoginChanged(this.login);
}

class AuthPasswordChanged extends AuthEvent{
  final String password;

  AuthPasswordChanged(this.password);
}

class AuthStatusChanged extends AuthEvent{
  final AuthenticationStatus status;

  AuthStatusChanged(this.status);
}

class LogoutEvent extends AuthEvent {}