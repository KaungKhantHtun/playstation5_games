// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDetailModel _$GameDetailModelFromJson(Map<String, dynamic> json) =>
    GameDetailModel(
      name: json['name'] as String,
      released: json['released'] as String,
      metacritic: json['metacritic'] as int,
      backgroundImage: json['background_image'] as String,
      description: json['description'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => DetailItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      developers: (json['developers'] as List<dynamic>)
          .map((e) => DetailItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishers: (json['publishers'] as List<dynamic>)
          .map((e) => DetailItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      platforms: (json['platforms'] as List<dynamic>)
          .map((e) => PlatformModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameDetailModelToJson(GameDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'released': instance.released,
      'metacritic': instance.metacritic,
      'background_image': instance.backgroundImage,
      'description': instance.description,
      'genres': instance.genres,
      'developers': instance.developers,
      'publishers': instance.publishers,
      'platforms': instance.platforms,
    };
