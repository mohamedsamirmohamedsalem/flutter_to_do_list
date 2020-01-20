import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widgets/Tasks_List.dart';
import 'package:flutter_to_do_list/Widgets/Constants.dart';
import 'package:flutter_to_do_list/model/Task.dart';
import 'package:flutter_to_do_list/model/TaskData.dart';
import 'package:provider/provider.dart';

import 'Add_Task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          ShowModelSheet(context);
        },
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            upperElements(),
            Expanded(
              child: Container(
                decoration: ContainerCurve(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TasksList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget upperElements() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 40, top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            child: Icon(
              Icons.list,
              size: 40.0,
              color: Colors.lightBlueAccent,
            ),
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            'Today',
            style: TextStyle(fontSize: 50.0, color: Colors.white),
          ),
          Text(
            '${Provider.of<TaskData>(context).tasks.length} Tasks',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }

  void ShowModelSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => AddTask(),
    );
  }
}
