import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/model/Task.dart';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(Name: 'mohamed'),
  ];
}
