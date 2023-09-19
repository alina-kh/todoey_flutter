import 'package:flutter/material.dart';
import 'package:todoey_flutter/services/constants.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kModalBackgroundColor,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: kContainerDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Добавить задачу',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kMainColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              color: kMainColor,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text(
                'Добавить',
                style: TextStyle(
                  color: kAccentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}