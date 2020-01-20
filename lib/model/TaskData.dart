import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/model/Task.dart';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(Name: 'mohamed'),
  ];
//
//  UnmodifiableListView<Task> get tasks {
//    return _tasks;
//  }

  void tasksAdded(String taskTitle) {
    tasks.add(Task(Name: taskTitle));
    notifyListeners();
  }

  void toggleDone(int index) {
    tasks[index].toogleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
