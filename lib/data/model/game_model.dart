import 'package:json_annotation/json_annotation.dart';
import 'package:ps5_games/domain/entity/game_entity.dart';
part 'game_model.g.dart';

@JsonSerializable()
class GameModel {
  int id;
  String name;
  String released;
  int metacritic;

  @JsonKey(name: "background_image")
  String? backgroundImage;

  GameModel({
    required this.id,
    required this.name,
    required this.released,
    this.metacritic = 0,
    required this.backgroundImage,
  });

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  Map<String, dynamic> toJson() => _$GameModelToJson(this);

  GameEntity toEntity() => GameEntity(
    id: id,
      name: name,
      released: released,
      metacritic: metacritic,
      backgroundImage: backgroundImage);
}
