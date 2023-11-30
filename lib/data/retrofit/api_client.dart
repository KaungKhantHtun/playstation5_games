import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ps5_games/data/model/game_detail_model.dart';
import 'package:ps5_games/data/model/game_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.rawg.io/api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("games")
  Future<ResponseData> fetchGames(
    @Query("page") int page,
    @Query("page_size") int pageSize,
    @Query("platforms") int platformId,
    @Query("dates") String startDateAndEndDate,
    @Query("ordering") String ordering,
    @Query("key") String key,
  );

  @GET("games/{id}")
  Future<GameDetailModel> getGameDetail(
    @Path("id") int postId,
    @Query("key") String key,
  );
}

@JsonSerializable()
class ResponseData {
  List<GameModel> results;
  ResponseData({required this.results});
  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
