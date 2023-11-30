// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameModel _$GameModelFromJson(Map<String, dynamic> json) => GameModel(
      name: json['name'] as String,
      released: json['released'] as String,
      metacritic: json['metacritic'] as int? ?? 0,
      backgroundImage: json['background_image'] as String,
    );

Map<String, dynamic> _$GameModelToJson(GameModel instance) => <String, dynamic>{
      'name': instance.name,
      'released': instance.released,
      'metacritic': instance.metacritic,
      'background_image': instance.backgroundImage,
    };
