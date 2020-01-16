import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Widgets/Constants.dart';

class AddTask extends StatelessWidget {
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
                  print('duighduf');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
