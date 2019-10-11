import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

//  @override
//  _MyHomePageState createState() => _MyHomePageState();

  @override
  _MyHomeListPage createState() => _MyHomeListPage();
}

class _MyHomeListPage extends State<MyHomePage> {
  List _names = ["冒泡算法", "插入算法"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: _childListItem(),
      ),
    );
  }

  List<Widget> _childListItem() {
    List<Widget> _widgets = List();
    for (int i = 0; i < _names.length; i++) {
      _widgets.add(Column(children: [
        ListTile(
            title: Text(_names[i]),
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
    Fluttertoast.showToast(msg: _names[index]);
  }
}
