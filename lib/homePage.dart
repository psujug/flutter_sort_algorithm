import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  List<ItemData> _namess = List();

  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("static/file/load_data.json");
    List<dynamic> resultData = json.decode(data);
    print(resultData.toString());
    setState(() {
      _namess = getItemDataList(resultData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: _childListItem()),
    );
  }

  List<Widget> _childListItem() {
    List<Widget> _widgets = List();
    for (int i = 0; i < _namess.length; i++) {
      _widgets.add(Column(children: [
        ListTile(
            title: Text(_namess[i].name),
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
    Fluttertoast.showToast(msg: _namess[index].name);
    Navigator.of(context).push(new PageRouteBuilder(pageBuilder:
        (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
      return SortPage(data: _namess[index]);
    }));
  }
}
