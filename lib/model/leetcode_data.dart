import 'package:json_annotation/json_annotation.dart';

part 'leetcode_data.g.dart';


List<LeetcodeData> getLeetcodeDataList(List<dynamic> list){
  List<LeetcodeData> result = [];
  list.forEach((item){
    result.add(LeetcodeData.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class LeetcodeData extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'path')
  String path;

  LeetcodeData(this.title,this.path,);

  factory LeetcodeData.fromJson(Map<String, dynamic> srcJson) => _$LeetcodeDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LeetcodeDataToJson(this);

}
