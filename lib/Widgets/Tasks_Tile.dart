import 'package:flutter/material.dart';
import 'CheckBoxState.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  TaskTile(this.taskName, this.isChecked);

  void checkBoxCallBack(bool checkBoxState) {
//    setState(() {
//      print('ifyh');
//      isChecked = checkBoxState;
//    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: CheckBoxState(isChecked, checkBoxCallBack),
    );
  }
}
