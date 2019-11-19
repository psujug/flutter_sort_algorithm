import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sort_algorithm/model/item_data.dart';
import 'package:flutter_sort_algorithm/sort/sortWidget.dart';

class SortPage extends StatefulWidget {
  SortPage({Key key, @required this.data}) : super(key: key);
  @override
  _SortPageState createState() => _SortPageState();

  final ItemData data;

  SortPage.temp(this.data);
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.name),
      ),
      body: Column(
        children: <Widget>[
          Text(widget.data.sortData.toString()),
          Text(SortAlgorithm(widget.data.type).sort(List.from(widget.data.sortData)).toString())
        ],
      ),
    );
  }
}
