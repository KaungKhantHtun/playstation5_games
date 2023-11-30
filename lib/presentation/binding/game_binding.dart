import 'package:get/get.dart';
import 'package:ps5_games/data/remote_datasource/impl/game_remote_datasource_impl.dart';
import 'package:ps5_games/data/repo_impl/game_repo_impl.dart';
import 'package:ps5_games/domain/usecase/game_usecase.dart';
import 'package:ps5_games/presentation/controller/game_controller.dart';

class GameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameUsecase>(
        () => GameUsecase(GameRepoImpl(GameRemoteDataSourceImpl())));
    Get.lazyPut<GameController>(() => GameController());
  }
}
