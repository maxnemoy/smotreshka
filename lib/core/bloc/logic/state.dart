part of 'bloc.dart';

class LogicState extends Equatable {
  final LogicDataState state;
  final CinemaRepository repository;

  LogicState({this.state = LogicDataState.isLoaded,
      CinemaRepository? repository})
      : repository = repository ?? CinemaRepository();

  LogicState copyWith({LogicDataState? state, CinemaRepository? repository}) {
    return LogicState(
      state: state ?? this.state,
      repository: repository ?? this.repository
      );
  }

  @override
  List<Object> get props => [state, repository];
}
