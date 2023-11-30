import 'package:ps5_games/domain/entity/detail_item_entity.dart';
import 'package:ps5_games/domain/entity/platform_entity.dart';

class GameDetailEntity {
  String name;
  String released;
  int metacritic;

  String backgroundImage;

  String description;

  List<DetailItemEntity> genres;
  List<DetailItemEntity> developers;
  List<DetailItemEntity> publishers;
  List<PlatformEntity> platforms;

  GameDetailEntity({
    required this.name,
    required this.released,
    required this.metacritic,
    required this.backgroundImage,
    required this.description,
    required this.genres,
    required this.developers,
    required this.publishers,
    required this.platforms,
  });
}
