import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';
import 'package:smotreshka/core/repository/userRepository.dart';

part 'state.dart';
part 'event.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;
  
  RouteBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(RouteState()) {
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(ChangeAuthStateEvent(status)),
    );
    on<ChangeAuthStateEvent>(_onAuthStatusChanged);
    on<SelectPageEvent>(_onPageSelect);
    on<ShowDetailEvent>(_onShowDetailEvent);
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  void _onAuthStatusChanged(ChangeAuthStateEvent event, Emitter<RouteState> emiter)async{
    emiter(state.copyWith(status: event.status));
  }

  void _onPageSelect(SelectPageEvent event, Emitter<RouteState> emitter){
    emitter(state.copyWith(page: event.page));
  }

  void _onShowDetailEvent(ShowDetailEvent event, Emitter<RouteState> emitter ){
    emitter(state.copyWith(title: event.title, page: event.page, source: event.source));
  }
}
