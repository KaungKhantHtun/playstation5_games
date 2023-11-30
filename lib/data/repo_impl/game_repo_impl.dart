import 'package:ps5_games/data/remote_datasource/game_remote_datasource.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';
import 'package:ps5_games/domain/repo/game_repo.dart';

class GameRepoImpl implements GameRepo {
  GameRepoImpl(this._remoteDataSource);
  final GameRemoteDataSource _remoteDataSource;

  @override
  Future<List<GameEntity>> fetchGames(
      int page, String startDateAndEndDate) async {
    final games = await _remoteDataSource.fetchGames(page, startDateAndEndDate);
    return List.from(games.map((e) => e.toEntity()));
  }

  @override
  Future<GameDetailEntity> getGameDetail(int id) async {
    final gameDetail = await _remoteDataSource.getGameDetail(id);
    return gameDetail.toEntity();
  }
}
