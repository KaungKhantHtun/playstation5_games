import 'package:json_annotation/json_annotation.dart';
import 'package:ps5_games/data/model/detail_item_model.dart';
import 'package:ps5_games/data/model/requirement_model.dart';
import 'package:ps5_games/domain/entity/platform_entity.dart';

part 'platform_model.g.dart';

@JsonSerializable()
class PlatformModel {
  DetailItemModel platform;
  @JsonKey(name: 'released_at')
  String releasedAt;
  RequirementModel requirements;

  PlatformModel({
    required this.platform,
    required this.releasedAt,
    required this.requirements,
  });

  factory PlatformModel.fromJson(Map<String, dynamic> json) =>
      _$PlatformModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlatformModelToJson(this);

  PlatformEntity toEntity() => PlatformEntity(
      platform: platform, releasedAt: releasedAt, requirements: requirements);
}
