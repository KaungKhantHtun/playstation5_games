import 'package:ps5_games/data/repo_impl/game_repo_impl.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';
import 'package:ps5_games/domain/repo/game_repo.dart';

class GameUsecase {
  GameUsecase(this._repo);
  final GameRepo _repo;

  Future<List<GameEntity>> fetchGames(
      int page, String startDateAndEndDate) async {
    return await _repo.fetchGames(page, startDateAndEndDate);
  }

  Future<GameDetailEntity> getGameDetail(int id) async {
    return await _repo.getGameDetail(id);
  }
}
