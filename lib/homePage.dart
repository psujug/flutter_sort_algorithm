import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sort_algorithm/sort/sortHomePage.dart';
import 'package:flutter_sort_algorithm/sort/sortPage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_sort_algorithm/model/item_data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomeListPage createState() => _MyHomeListPage();
}

class _MyHomeListPage extends State<MyHomePage> {
  List<String> _namess = ["排序","Leetcode"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: _listItem,
        itemCount: _namess.length,
      ),
    );
  }

  Widget _listItem(BuildContext context, int index) {
    return Column(children: [
      ListTile(
          title: Text(_namess[index]),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => _clickItem(index)),
      Divider(
        height: 1.0,
        color: Colors.grey,
      )
    ]);
  }

  List<Widget> _childListItem() {
    List<Widget> _widgets = List();
    for (int i = 0; i < _namess.length; i++) {
      _widgets.add(Column(children: [
        ListTile(
            title: Text(_namess[i]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => _clickItem(i)),
        Divider(
          height: 1.0,
          color: Colors.grey,
        )
      ]));
    }
    return _widgets;
  }

  void _clickItem(int index) {
    Fluttertoast.showToast(msg: _namess[index]);
//    Navigator.of(context).push(new PageRouteBuilder(pageBuilder:
//        (BuildContext context, Animation<double> animation,
//            Animation<double> secondaryAnimation) {
//      return SortHomePage(title: _namess[index]);
//    }));
    if(index == 0){
      Navigator.of(context).pushNamed("/sort");
    }else if(index == 1){
      Navigator.of(context).pushNamed("/leet");
    }
  }
}
