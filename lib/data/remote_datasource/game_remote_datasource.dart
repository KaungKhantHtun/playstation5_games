import 'package:either_dart/either.dart';
import 'package:ps5_games/core/util/failure.dart';
import 'package:ps5_games/data/model/game_detail_model.dart';
import 'package:ps5_games/data/model/game_model.dart';

abstract class GameRemoteDataSource {
  Future<Either<Failure, List<GameModel>>> fetchGames(
      int page, String startDateAndEndDate);
  Future<Either<Failure, GameDetailModel>> getGameDetail(int id);
}
