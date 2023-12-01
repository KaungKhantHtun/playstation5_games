import 'package:json_annotation/json_annotation.dart';
import 'package:ps5_games/data/model/detail_item_model.dart';
import 'package:ps5_games/data/model/platform_model.dart';
import 'package:ps5_games/domain/entity/game_detail_entity.dart';

part 'game_detail_model.g.dart';

@JsonSerializable()
class GameDetailModel {
  String description;

  List<DetailItemModel> genres;
  List<DetailItemModel> developers;
  List<DetailItemModel> publishers;
  List<PlatformModel> platforms;

  GameDetailModel({
   
    required this.description,
    required this.genres,
    required this.developers,
    required this.publishers,
    required this.platforms,
  });

  factory GameDetailModel.fromJson(Map<String, dynamic> json) =>
      _$GameDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameDetailModelToJson(this);

  GameDetailEntity toEntity() => GameDetailEntity(
    
      description: description,
      genres: List.from(genres.map((e) => e.toEntity())),
      developers: List.from(developers.map((e) => e.toEntity())),
      publishers: List.from(publishers.map((e) => e.toEntity())),
      platforms: List.from(platforms.map(
        (e) => e.toEntity(),
      )));
}
