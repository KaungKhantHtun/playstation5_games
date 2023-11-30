import 'package:json_annotation/json_annotation.dart';
import 'package:ps5_games/domain/entity/detail_item_entity.dart';

part 'detail_item_model.g.dart';

@JsonSerializable()
class DetailItemModel {
  String name;
  String slug;

  @JsonKey(name: "games_count")
  int gameCount;
  @JsonKey(name: "image_background")
  String imageBackground;

  DetailItemModel({
    required this.name,
    required this.slug,
    required this.gameCount,
    required this.imageBackground,
  });

  factory DetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$DetailItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailItemModelToJson(this);

  DetailItemEntity toEntity() => DetailItemEntity(
        name: name,
        slug: slug,
        gameCount: gameCount,
        imageBackground: imageBackground,
      );
}
