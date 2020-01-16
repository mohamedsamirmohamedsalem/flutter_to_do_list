import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/model/TaskModel.dart';
import 'Tasks_Tile.dart';

class TasksList extends StatelessWidget {
  List<TaskModel> tasks = [
    TaskModel(taskName: 'mohamed'),
    TaskModel(taskName: 'mohamed'),
    TaskModel(taskName: 'mohamed'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[0].taskName, tasks[0].isDone);
      },
      itemCount: tasks.length,
    );
  }
}
