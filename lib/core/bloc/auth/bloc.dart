import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import 'package:smotreshka/core/models/user/user.dart';
import 'package:smotreshka/core/repository/userRepository.dart';

part 'state.dart';
part 'event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationRepository _authenticationRepository;

  AuthBloc({required AuthenticationRepository authenticationRepository}) : _authenticationRepository = 
  authenticationRepository, super(const AuthState()){
    on<TryLogin>(_onTryLogin);
    on<AuthLoginChanged>(_usernameChanged);
    on<AuthPasswordChanged>(_passwordChanged);
    on<LogoutEvent>(_onLogout);
  }

    @override
  Future<void> close() {
    _authenticationRepository.dispose();
    return super.close();
  }

  void _onTryLogin(TryLogin event, Emitter<AuthState> emiter)async{
    await _authenticationRepository.logIn(username: state.username.value, password: state.password.value);
  }

  void _onLogout(LogoutEvent event, Emitter<AuthState> emite){
    _authenticationRepository.logOut();
  }

  void _usernameChanged(AuthLoginChanged event, Emitter<AuthState> emitter){
    final login = Username.dirty(event.login);
    emitter(state.copyWith(
      username: login,
      status: Formz.validate([state.password, login])
    ));
  }

  void _passwordChanged(AuthPasswordChanged event, Emitter<AuthState> emitter){
    final password = Password.dirty(event.password);
    emitter(state.copyWith(
      password: password,
      status: Formz.validate([password, state.username])
    ));
  }
}