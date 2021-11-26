part of 'bloc.dart';

enum Pages { main, tv, start, amedia, megogo, moretv, premier, ivi, 
profile, search, detail }

class RouteState extends Equatable {
  final AuthenticationStatus status;
  final Pages page;
  final TitleDataModel title;
  final String source;

  RouteState({
    this.status = AuthenticationStatus.unknown,
    this.page = Pages.main,
    TitleDataModel? title,
    this.source = ""
  }) : title = title ?? TitleDataModel();

  RouteState copyWith({
    AuthenticationStatus? status,
    Pages? page,
    TitleDataModel? title,
    String? source
  }) {
    return RouteState(
      status: status ?? this.status,
      page: page ?? this.page,
      title: title ?? this.title,
      source: source ?? this.source,
    );
  }

  @override
  List<Object> get props => [status, page, title, source];
}