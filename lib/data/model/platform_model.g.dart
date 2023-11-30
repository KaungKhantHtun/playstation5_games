// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformModel _$PlatformModelFromJson(Map<String, dynamic> json) =>
    PlatformModel(
      platform:
          DetailItemModel.fromJson(json['platform'] as Map<String, dynamic>),
      releasedAt: json['released_at'] as String,
      requirements: RequirementModel.fromJson(
          json['requirements'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformModelToJson(PlatformModel instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'released_at': instance.releasedAt,
      'requirements': instance.requirements,
    };
