// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemData _$ItemDataFromJson(Map<String, dynamic> json) {
  return ItemData(
    json['name'] as String,
    json['type'] as String,
    (json['sortData'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$ItemDataToJson(ItemData instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'sortData': instance.sortData,
    };
