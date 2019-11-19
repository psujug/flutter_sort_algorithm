import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ZChange extends StatelessWidget {
  final String title;

  ZChange(this.title);

  String content = '''
  将一个给定字符串根据给定的行数，以从上往下、从左到右进行 Z 字形排列。
  比如输入字符串为 "LEETCODEISHIRING" 行数为 3 时，排列如下：
  L   C   I   R
  E T O E S I I G
  E   D   H   N
  之后，你的输出需要从左往右逐行读取，产生出一个新的字符串，比如："LCIRETOESIIGEDHN"。
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Text(content),
        ],
      ),
    );
  }
}
