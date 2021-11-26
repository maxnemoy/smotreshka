part of 'bloc.dart';

abstract class RouteEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangeAuthStateEvent extends RouteEvent {
  final AuthenticationStatus status;

  ChangeAuthStateEvent(this.status);
}

class SelectPageEvent extends RouteEvent{
  final Pages page;

  SelectPageEvent(this.page);
}

class ShowDetailEvent extends RouteEvent{
  final Pages page;
  final TitleDataModel title;
  final String source;

  ShowDetailEvent(this.page, this.title, this.source);
}

