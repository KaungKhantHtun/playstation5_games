import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';

abstract class GameRepo {
  Future<List<GameEntity>> fetchGames(int page, String startDateAndEndDate);
  Future<GameDetailEntity> getGameDetail(int id);
}
