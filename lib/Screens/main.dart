import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Screens/TasksScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
