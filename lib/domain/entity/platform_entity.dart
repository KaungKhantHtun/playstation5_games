import 'package:ps5_games/data/model/detail_item_model.dart';
import 'package:ps5_games/data/model/requirement_model.dart';

class PlatformEntity {
  DetailItemModel platform;
  String releasedAt;
  RequirementModel requirements;

  PlatformEntity({
    required this.platform,
    required this.releasedAt,
    required this.requirements,
  });
}
