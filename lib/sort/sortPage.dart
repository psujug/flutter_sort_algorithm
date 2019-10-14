import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sort_algorithm/sort/sortWidget.dart';

class SortPage extends StatefulWidget {
  SortPage({Key key, this.title}) : super(key: key);
  @override
  _SortPageState createState() => _SortPageState();

  final String title;
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(),
    );
  }
}
