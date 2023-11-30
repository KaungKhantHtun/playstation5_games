import 'package:ps5_games/data/model/game_detail_model.dart';
import 'package:ps5_games/data/model/game_model.dart';

abstract class GameRemoteDataSource {
  Future<List<GameModel>> fetchGames(int page, String startDateAndEndDate);
  Future<GameDetailModel> getGameDetail(int id);
}
