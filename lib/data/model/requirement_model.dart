import 'package:json_annotation/json_annotation.dart';

part 'requirement_model.g.dart';

@JsonSerializable()
class RequirementModel {
  String? minimum;
  String? recommended;

  RequirementModel({
    this.minimum = "",
    this.recommended = "",
  });

  factory RequirementModel.fromJson(Map<String, dynamic> json) =>
      _$RequirementModelFromJson(json);
  Map<String, dynamic> toJson() => _$RequirementModelToJson(this);
}
