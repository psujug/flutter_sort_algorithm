

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sort_algorithm/model/leetcode_data.dart';

class LeetHomePage extends StatefulWidget{

  final String title;

  const LeetHomePage(this.title);

  @override
  State<StatefulWidget> createState() => _HomeListPage();

}

class _HomeListPage extends State<LeetHomePage>{

  List<LeetcodeData> _list = List();


  @override
  void initState() {
    super.initState();
    _initData();
  }

  void _initData() async{
    String data = await DefaultAssetBundle.of(context).loadString("static/file/load_leetcode_programming.json");
    List<dynamic> resultData = json.decode(data);
    setState(() {
      _list = getLeetcodeDataList(resultData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(itemBuilder: _itemBuilder,itemCount: _list.length),
    );
  }

  Widget _itemBuilder (BuildContext context, int index){
    return new Column(children: <Widget>[
      ListTile(
        title: Text(_list[index].title),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: ()=>{
          Navigator.of(context).pushNamed(_list[index].path,arguments: {"title":_list[index].title})
        },
      ),
      Divider(
        height: 1.0,
        color: Colors.grey,
      ),
    ],);
  }

}