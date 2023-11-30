// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailItemModel _$DetailItemModelFromJson(Map<String, dynamic> json) =>
    DetailItemModel(
      name: json['name'] as String,
      slug: json['slug'] as String,
      gameCount: json['games_count'] as int,
      imageBackground: json['image_background'] as String,
    );

Map<String, dynamic> _$DetailItemModelToJson(DetailItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'games_count': instance.gameCount,
      'image_background': instance.imageBackground,
    };
