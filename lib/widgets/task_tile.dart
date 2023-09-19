import 'package:flutter/material.dart';
import 'package:todoey_flutter/services/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile(this.taskTitle, this.isChecked, this.checkboxCallback,
      this.longPressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(
        activeColor: kMainColor,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}