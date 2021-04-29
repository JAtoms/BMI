import 'package:flutter/material.dart';
import 'input_page_file.dart';

void main() => runApp(appShell());

Widget appShell() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        platform: TargetPlatform.iOS,
        scaffoldBackgroundColor: Color(0XFF0A0E21)),
    home: InputPage(),
  );
}

// floatingActionButton: Theme(
// data: ThemeData.light(),
// child: FloatingActionButton(
// child: Icon(Icons.add),
// ),
// ),
