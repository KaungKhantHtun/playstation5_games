import 'package:dio/dio.dart';
import 'package:ps5_games/core/util/const/const_util.dart';
import 'package:ps5_games/data/model/game_detail_model.dart';
import 'package:ps5_games/data/model/game_model.dart';
import 'package:ps5_games/data/remote_datasource/game_remote_datasource.dart';
import 'package:ps5_games/data/retrofit/api_client.dart';
import 'package:ps5_games/env/env.dart';

class GameRemoteDataSourceImpl implements GameRemoteDataSource {
  @override
  Future<List<GameModel>> fetchGames(
      int page, String startDateAndEndDate) async {
    ResponseData responseData = await ApiClient(
      Dio(
        BaseOptions(contentType: "application/json"),
      ),
    ).fetchGames(
      page,
      pageSize,
      ps5PlatformId,
      startDateAndEndDate,
      ordering,
      Env.apiKey,
    );

    return responseData.results;
  }

  @override
  Future<GameDetailModel> getGameDetail(int id) async {
    GameDetailModel gameDetailModel = await ApiClient(
      Dio(
        BaseOptions(contentType: "application/json"),
      ),
    ).getGameDetail(
      id,
      Env.apiKey,
    );

    return gameDetailModel;
  }
}
