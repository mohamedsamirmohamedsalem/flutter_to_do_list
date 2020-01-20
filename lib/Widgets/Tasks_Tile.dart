import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_to_do_list/model/TaskData.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isChecked;
  final int index;
  TaskTile({this.name, this.isChecked, this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newvalue) {
          Provider.of<TaskData>(context).toggleDone(index);
        },
      ),
      onLongPress: () {
        Provider.of<TaskData>(context).removeTask(index);
      },
    );
  }
}
