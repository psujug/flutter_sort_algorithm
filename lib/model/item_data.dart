import 'package:json_annotation/json_annotation.dart';

part 'item_data.g.dart';

List<ItemData> getItemDataList(List<dynamic> list) {
  List<ItemData> result = [];
  list.forEach((item) {
    result.add(ItemData.fromJson(item));
  });
  return result;
}

@JsonSerializable()
class ItemData extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'sortData')
  List<int> sortData;

  ItemData(
    this.name,
    this.type,
    this.sortData,
  );

  factory ItemData.fromJson(Map<String, dynamic> srcJson) =>
      _$ItemDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemDataToJson(this);

  @override
  String toString() =>
      "name:" + name + " type:" + type + " sortData:" + sortData.toString();
}
