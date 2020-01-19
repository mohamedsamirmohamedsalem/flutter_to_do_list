import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/model/TaskData.dart';
import 'package:provider/provider.dart';
import 'Tasks_Tile.dart';

class TasksList extends StatelessWidget {
  Widget showListItems(BuildContext context, int index) {
    return TaskTile(
      name: Provider.of<TaskData>(context).tasks[index].Name,
      isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
      checkBoxCallback: (checkBoxState) {
//        setState(() {
////          print('kflehn');
////          Provider.of<TaskData>(context).tasks[index].toogleDone();
//        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: showListItems,
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
