import 'package:either_dart/either.dart';
import 'package:ps5_games/core/util/failure.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';
import 'package:ps5_games/domain/repo/game_repo.dart';

class GameUsecase {
  GameUsecase(this._repo);
  final GameRepo _repo;

  Future<Either<Failure, List<GameEntity>>> fetchGames(
      int page, String startDateAndEndDate) async {
    return await _repo.fetchGames(page, startDateAndEndDate);
  }

  Future<Either<Failure, GameDetailEntity>> getGameDetail(int id) async {
    return await _repo.getGameDetail(id);
  }
}
