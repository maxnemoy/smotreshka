import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';
import 'package:smotreshka/core/models/smotreshka/tv/tv_channel/channel.dart';
import 'package:smotreshka/core/repository/cinemaRepository.dart';

part 'state.dart';
part 'event.dart';

class LogicBloc extends Bloc<LogicEvent, LogicState> {
  final CinemaRepository _cinemaRepository;

  LogicBloc({required CinemaRepository cinemaRepository})
      : _cinemaRepository = cinemaRepository,
        super(LogicState(repository: cinemaRepository)) {
    _cinemaRepository.status.listen((event) {add(ChangeStatusEvent(event));});
    on<GetHomeCollectionEvent>(_onGetHomeCollection);
    on<ChangeStatusEvent>(_onChangeStatus);
    on<GetVideoDetailEvent>(_onGetVideoDetailEvent);
    on<GetChannelEvent>(_onGetChannelEvent);
    on<GetChannelPlayback>(onGetChannelPlayback);
    on<GetAllTitlesInSource>(onGetItemsInSource);
    on<GetAllCatigoriesInSource>(onGetAllCatigoriesInSource);
  }

  @override
  Future<void> close() {
    _cinemaRepository.dispose();
    return super.close();
  }

  void _onGetHomeCollection(GetHomeCollectionEvent event, Emitter<LogicState> emiter) async {
    await _cinemaRepository.getHomeScreenCollection();
  }

  void _onGetVideoDetailEvent(GetVideoDetailEvent event, Emitter<LogicState> emiter) async {
    await _cinemaRepository.getSelectedItem(event.source, event.title);
  }

  void _onGetChannelEvent(GetChannelEvent event, Emitter<LogicState> emiter) async {
    await _cinemaRepository.getChennelList();
  }

  void onGetChannelPlayback(GetChannelPlayback event, Emitter<LogicState> emiter) async {
    await _cinemaRepository.getSelectedChannel(event.channel);
  }

  void onGetItemsInSource(GetAllTitlesInSource event, Emitter<LogicState> emiter) async {
    await _cinemaRepository.getAllItemsInSource(event.source, event.categoryId);
  }


  void onGetAllCatigoriesInSource(GetAllCatigoriesInSource event, Emitter<LogicState> emiter) async {
    await _cinemaRepository.getAllCategoriesInSource(event.source);
  }

  void _onChangeStatus(ChangeStatusEvent event, Emitter<LogicState> emiter){
    emiter(state.copyWith(state: event.state, repository: _cinemaRepository));
  }
}
