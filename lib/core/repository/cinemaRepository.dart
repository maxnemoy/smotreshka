import 'dart:async';

import 'package:smotreshka/core/api/api.dart';
import 'package:dio/dio.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collections.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/playback/playback_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/tv_channel/channel.dart';
import 'package:smotreshka/core/models/smotreshka/tv/tv_channel/channel_list.dart';
import 'package:smotreshka/core/repository/userRepository.dart';

enum LogicDataState { isLoad, isLoaded }

class CinemaRepository {
  final AuthenticationRepository authRep;
  ApiClient api = ApiClient(Dio());
  CollectionsDataModel? _collectionsData;
  TitleInfoDataModel? _selectedTitle;
  ChannelListDataModel? _channelListDataModel;
  ChannelPlaybackInfoDataModel? _selectedChannel;

  final _statusController = StreamController<LogicDataState>();

  CinemaRepository({AuthenticationRepository? authRep})
      : authRep = authRep ?? AuthenticationRepository();

    Stream<LogicDataState> get status async* {
    yield LogicDataState.isLoad;
    yield* _statusController.stream;
  }

  CollectionsDataModel? get homeCollection => _collectionsData;
  TitleInfoDataModel? get selectedItem => _selectedTitle;
  ChannelListDataModel? get channelList => _channelListDataModel;
  ChannelPlaybackInfoDataModel? get selectedChannel => _selectedChannel;

  void dispose() => _statusController.close();

  Future<void> getHomeScreenCollection() async {
    _statusController.add(LogicDataState.isLoad);
    _collectionsData = await api.getHomeScreenCollection(authRep.user!.session);
    _statusController.add(LogicDataState.isLoaded);
  }

  Future<void> getSelectedItem(String source, TitleDataModel title) async {
    _statusController.add(LogicDataState.isLoad);
    _selectedTitle = await api.getTitleDetail(source ,title.id, authRep.user!.session);
    _statusController.add(LogicDataState.isLoaded);
  }

  Future<void> getSelectedChannel(TvChannelDataModel channel) async {
    _statusController.add(LogicDataState.isLoad);
    _selectedChannel = await api.getChannelPlayback(channel.id, authRep.user!.session);
    _statusController.add(LogicDataState.isLoaded);
  }

  Future<void> getChennelList() async {
    _statusController.add(LogicDataState.isLoad);
    _channelListDataModel = await api.getAllChannel(authRep.user!.session);
    _statusController.add(LogicDataState.isLoaded);
  }
}
