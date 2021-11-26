import 'dart:async';

import 'package:smotreshka/core/api/api.dart';
import 'package:dio/dio.dart';
import 'package:smotreshka/core/models/smotreshka/user/user.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated, error }

class AuthenticationRepository {
  ApiClient api = ApiClient(Dio());
  UserDataModel? _userData;
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  UserDataModel? get user => _userData;

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    _userData = await api.userAuth("email=$username&password=$password");
    if (_userData?.id.isNotEmpty ?? false) {
      _controller.add(AuthenticationStatus.authenticated);
    } else {
      _controller.add(AuthenticationStatus.error);
    }
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
