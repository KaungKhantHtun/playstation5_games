import 'package:get/get.dart';
import 'package:ps5_games/core/extension/datetime_ext.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';
import 'package:ps5_games/domain/usecase/game_usecase.dart';

class GameController extends GetxController {
  GameUsecase gameUsecase = Get.find();
  List<GameEntity> _games = <GameEntity>[].obs;
  Rx<GameDetailEntity> _gameDetail = GameDetailEntity(
    name: "",
    released: "",
    metacritic: 0,
    backgroundImage: "",
    description: "",
    genres: [],
    developers: [],
    publishers: [],
    platforms: [],
  ).obs;

  List<GameEntity> get games => _games;
  Rx<GameDetailEntity> get gameDetail => _gameDetail;

  @override
  void onInit() {
    fetchGames(1);
    super.onInit();
  }

  Future<void> fetchGames(int pageNo) async {
    _games.addAll(await gameUsecase.fetchGames(
        pageNo, "${DateTime.now().getDate()},${DateTime.now().getLastYear()}"));
  }

  Future<void> getGameDetail(int id) async {
    _gameDetail.value = await gameUsecase.getGameDetail(id);
  }
}
