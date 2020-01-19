import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widgets/Constants.dart';
import 'package:flutter_to_do_list/Widgets/Tasks_List.dart';
import 'package:flutter_to_do_list/model/Task.dart';

class AddTask extends StatefulWidget {
  Function tasksAdded;
  AddTask(this.tasksAdded);
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff6b6b6b),
      child: Container(
        decoration: ContainerCurve(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                //  textInputAction: TextInputAction.done,
                onChanged: (newText) {
                  taskTitle = newText;
                },
              ),
              Container(
                color: Colors.lightBlueAccent,
                height: 5.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  setState(() {
                    widget.tasksAdded(taskTitle);
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
