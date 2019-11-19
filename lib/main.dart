import 'package:flutter/material.dart';
import 'package:flutter_sort_algorithm/leetcode/leetHomePage.dart';
import 'package:flutter_sort_algorithm/sort/sortHomePage.dart';
import 'homePage.dart';
import 'leetcode/zChange.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '排序算法'),
      routes: <String, WidgetBuilder>{
        "/leet": (_) => LeetHomePage("Leet Code"),
        "/sort": (_) => SortHomePage("排序算法"),
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    Map<String, String> argument = settings.arguments;
    switch (settings.name) {
      case "/zChange":
        return MaterialPageRoute(
          settings:settings,
          builder: (_)=>ZChange(argument["title"])
        );
    }
  }
}
