import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Screens/TasksScreen.dart';
import 'package:flutter_to_do_list/model/TaskData.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter_to_do_list/model/Task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
