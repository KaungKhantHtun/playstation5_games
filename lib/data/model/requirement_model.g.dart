// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequirementModel _$RequirementModelFromJson(Map<String, dynamic> json) =>
    RequirementModel(
      minimum: json['minimum'] as String? ?? "",
      recommended: json['recommended'] as String? ?? "",
    );

Map<String, dynamic> _$RequirementModelToJson(RequirementModel instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'recommended': instance.recommended,
    };
