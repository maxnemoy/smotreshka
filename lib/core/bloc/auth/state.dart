part of 'bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  final FormzStatus status;
  final Username username;
  final Password password;

  AuthState copyWith({
    FormzStatus? status,
    Username? username,
    Password? password,
  }) {
    return AuthState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, username, password];
}