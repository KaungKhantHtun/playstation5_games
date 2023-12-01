import 'package:either_dart/either.dart';
import 'package:ps5_games/core/util/failure.dart';
import 'package:ps5_games/data/remote_datasource/impl/game_remote_datasource_impl.dart';
import 'package:ps5_games/data/repo_impl/game_repo_impl.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ps5_games/domain/usecase/game_usecase.dart';

void main() {
  GameUsecase gameUsecase =
      GameUsecase(GameRepoImpl(GameRemoteDataSourceImpl()));

  int mockPageNo = 1;
  String mockDate = "2021-12-12, 2022-12-22";
  int mockGameId = 799268;

  test('Game UseCase Fetch Games Test', () {
    final result = gameUsecase.fetchGames(mockPageNo, mockDate);
    result.fold(
      (failure) {
        Failure("Something Failure");
      },
      (data) {
        expect(result, isInstanceOf<List<GameEntity>>);
      },
    );
  });

  test('Game UseCase Fetch GameDetail Test', () {
    final result = gameUsecase.getGameDetail(mockGameId);
    result.fold(
      (failure) {
        Failure("Something Failure");
      },
      (data) {
        expect(result, isInstanceOf<GameDetailEntity>);
      },
    );
  });
}
