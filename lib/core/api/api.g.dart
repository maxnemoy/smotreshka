// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://fe.smotreshka.tv';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserDataModel> userAuth(authString) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': 'application/x-www-form-urlencoded'
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = authString;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserDataModel>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'application/x-www-form-urlencoded')
            .compose(_dio.options, '/v2/login',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CollectionsDataModel> getHomeScreenCollection(session,
      {audienceToken = "0x0000-0000-0000-0016"}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'session': session,
      r'audience-token': audienceToken
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CollectionsDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/vod/home/collections/v2',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CollectionsDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TitleInfoDataModel> getTitleDetail(source, id, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TitleInfoDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/vod/v2/${source}/titles/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TitleInfoDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CategoriesDataModel> getAllCategoriesInSource(source, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CategoriesDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'vod/v2/${source}/categories',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoriesDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TitlesDataModel> getAllTitleInCategory(
      source, categoryId, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'categoryId': categoryId,
      r'session': session
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TitlesDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/vod/v2/${source}/titles',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TitlesDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EpisodDataModel> getEpisodesDetail(source, titleId, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EpisodDataModel>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/vod/v2/${source}/titles/${titleId}/episodes',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EpisodDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EpisodDataModel> getSeasonDetail(
      source, titleId, seasonId, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        EpisodDataModel>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            '/vod/v2/{source_id}/titles/${titleId}/seasons/${seasonId}/episodes',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EpisodDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PlaybackUrlDataModel> getTitlePlayback(titleId, session,
      {sourceId, seasonId, episodeId, playbackOptions}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'session': session,
      r'sourceId': sourceId,
      r'seasonId': seasonId,
      r'episodeId': episodeId,
      r'playback_options': playbackOptions
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PlaybackUrlDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/playback/vod/v2/${titleId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PlaybackUrlDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelGenersDataModel> getChannelGenres(session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelGenersDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/genres',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelGenersDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelListDataModel> getAllChannel(session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelListDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/channels',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelListDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelListDataModel> getChannelNowList(session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelListDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/channels-now',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelListDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelProgramDataModel> getChannelProgram(
      channelId, period, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'period': period,
      r'session': session
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelProgramDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/channels/${channelId}/programs',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelProgramDataModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelPlaybackInfoDataModel> getChannelPlayback(
      channelId, session) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session': session};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelPlaybackInfoDataModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/playback-info/${channelId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelPlaybackInfoDataModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
