import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/category/categories.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collections.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/others/playback_url.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/episode.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title_info.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/titles.dart';
import 'package:smotreshka/core/models/smotreshka/tv/other/geners.dart';
import 'package:smotreshka/core/models/smotreshka/tv/playback/playback_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/programs/channel_program.dart';
import 'package:smotreshka/core/models/smotreshka/tv/tv_channel/channel_list.dart';
import 'package:smotreshka/core/models/smotreshka/user/user.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://fe.smotreshka.tv")
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(receiveTimeout: 5000, connectTimeout: 5000);
    dio.options.headers["Content-Type"] = "application/json, text/plain, */*";
    return _ApiClient(dio);
  }

  ///
  /// `USER`
  /// 

  /// [authString] format "email={email or username}&password={passwd}"
  /// return [UserDataModel]
  @POST("/v2/login")
  @Headers({"Content-Type": "application/x-www-form-urlencoded"})
  Future<UserDataModel> userAuth(@Body() String authString); 

  ///
  /// `COLLECTION ON HOME SCREEN`
  /// 

  /// [session] reqired string param
  /// [audienceToken] ?? default value 0x0000-0000-0000-0016
  /// return [CollectionsDataModel]
  @GET("/vod/home/collections/v2")
  Future<CollectionsDataModel> getHomeScreenCollection(@Query("session") String session,
  {@Query("audience-token") String audienceToken = "0x0000-0000-0000-0016"}); 

  ////
  /// `CINEMA`
  /// 

  /// Get title info 
  /// [source] string value of source name
  /// [id] string value of video id
  /// [session] string
  /// return [TitleInfoDataModel]
  @GET("/vod/v2/{source}/titles/{id}")
  Future<TitleInfoDataModel> getTitleDetail(
    @Path("source") String source,
    @Path("id") String id,    
  @Query("session") String session); 

  /// Get all categories in [source]
  /// [source] string source name
  /// [session] string session ID
  /// return [CategoriesDataModel]
  @GET("/vod/v2/{source}/categories")
  Future<CategoriesDataModel> getAllCategoriesInSource(
    @Path("source") String source,
    @Query("session") String session);

  /// Get all title in category
  /// [source] string source name
  /// [session] string session ID
  /// [categoryId] string category ID
  /// return [TitlesDataModel]
  @GET("/vod/v2/{source}/titles")
  Future<TitlesDataModel> getAllTitleInSource(
    @Path("source") String source,
    @Query("session") String session,
    {@Query("categoryId") String? categoryId,
    @Query("limit") int limit = 20,
    @Query("offset") int offset = 0,
    @Query("sort") String sort = "popular",
     }
  );

  /// Get serial episodes
  /// [source] string source name
  /// [titleId] string titce ID
  /// [session] string session ID
  /// return [EpisodDataModel]
  @GET("/vod/v2/{source}/titles/{title_id}/episodes")
  Future<EpisodDataModel> getEpisodesDetail(
    @Path("source") String source,
    @Path("title_id") String titleId,
    @Query("session") String session
  );

  /// Get serial seasons detail
  /// [source] string source name
  /// [titleId] string titce ID
  /// [seasonId] string seasonId ID from [TitleDetailDataModel.seasons]
  /// [session] string session ID
  /// return [EpisodDataModel]
  @GET("/vod/v2/{source_id}/titles/{title_id}/seasons/{season_id}/episodes")
  Future<EpisodDataModel> getSeasonDetail(
    @Path("source") String source,
    @Path("title_id") String titleId,
    @Path("season_id") String seasonId,
    @Query("session") String session
  );

  /// Get title playback
  /// all params from [TitleInfoDataModel.details.mediaItems.playbackMethods].params
  /// [titleId] string titce ID
  /// [sourceId] string 
  /// [seasonId] string
  /// [episodeId] string
  /// [playback_options] string
  /// [session] string session ID
  /// return [PlaybackUrlDataModel]
  @GET("/playback/vod/v2/{title_id}")
  Future<PlaybackUrlDataModel> getTitlePlayback(
    @Path("title_id") String titleId,
    @Query("session") String session,
    {
      @Query("sourceId") String? sourceId,
      @Query("seasonId") String? seasonId,
      @Query("episodeId") String? episodeId,
      @Query("playback_options") String? playbackOptions
      // TODO Maby need add this params?  
      //possibly required for a request from an archive, amediateka and something else? :`(
      //flutter: channel_id
      // flutter: region
      // flutter: start
      // flutter: end
      // flutter: true
    }
  );

  ///
  /// `TV`
  /// 

  /// Get geners of tv channals 
  /// [session] string sesseion id
  /// return [ChannelGenersDataModel]
  @GET("/genres")
  Future<ChannelGenersDataModel> getChannelGenres(
    @Query("session") String session
  );

  /// Get tv channels list
  /// [session] string sesseion id
  /// return [ChannelListDataModel]
  @GET("/channels")
  Future<ChannelListDataModel> getAllChannel(
    @Query("session") String session
  );

  /// Get tv channels with now program
  /// [session] string sesseion id
  /// return [ChannelListDataModel]
  @GET("/channels-now") 
  Future<ChannelListDataModel> getChannelNowList(
    @Query("session") String session
  );

  /// Get channel program by period
  /// [channel_id] string 
  /// [period] string example 1636870201:1638128400
  /// [session] string sesseion id
  /// return [ChannelProgramDataModel]
  @GET("/channels/{channel_id}/programs")
  Future<ChannelProgramDataModel> getChannelProgram(
    @Path("channel_id") String channelId,
    @Query("period") String period,
    @Query("session") String session
  );


  /// Get channel playback
  /// [channel_id] string 
  /// [session] string sesseion id
  /// return [ChannelPlaybackInfoDataModel] from `smotreshka/tv/playback/playback_info.dart`
  @GET("/playback-info/{channel_id}")
  Future<ChannelPlaybackInfoDataModel> getChannelPlayback(
    @Path("channel_id") String channelId,
    @Query("session") String session
  );
}