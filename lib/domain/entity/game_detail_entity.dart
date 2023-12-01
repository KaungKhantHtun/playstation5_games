import 'package:ps5_games/domain/entity/detail_item_entity.dart';
import 'package:ps5_games/domain/entity/platform_entity.dart';

class GameDetailEntity {
  String description;

  List<DetailItemEntity> genres;
  List<DetailItemEntity> developers;
  List<DetailItemEntity> publishers;
  List<PlatformEntity> platforms;

  GameDetailEntity({
    required this.description,
    required this.genres,
    required this.developers,
    required this.publishers,
    required this.platforms,
  });
}
