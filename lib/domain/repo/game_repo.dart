import 'package:either_dart/either.dart';
import 'package:ps5_games/core/util/failure.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';

abstract class GameRepo {
  Future<Either<Failure, List<GameEntity>>> fetchGames(
      int page, String startDateAndEndDate);
  Future<Either<Failure, GameDetailEntity>> getGameDetail(int id);
}
