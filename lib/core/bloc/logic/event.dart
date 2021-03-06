part of 'bloc.dart';

abstract class LogicEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetHomeCollectionEvent extends LogicEvent{}

class ChangeStatusEvent extends LogicEvent{
  final LogicDataState state;

  ChangeStatusEvent(this.state);
}

class GetVideoDetailEvent extends LogicEvent {
   final TitleDataModel title;
   final String source;

  GetVideoDetailEvent(this.title, this.source);
}

class GetChannelEvent extends LogicEvent {}

class GetChannelPlayback extends LogicEvent {
  final TvChannelDataModel channel;

  GetChannelPlayback(this.channel);
}

class GetAllTitlesInSource extends LogicEvent{
  final String source;
  final String categoryId;

  GetAllTitlesInSource(this.source, this.categoryId);
}

class GetAllCatigoriesInSource extends LogicEvent{
  final String source;

  GetAllCatigoriesInSource(this.source);
}