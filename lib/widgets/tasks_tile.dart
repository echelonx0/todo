import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//This is a child of tasks list screen. There, we use a listview.builder to construct as much tiles as we have in our tasks array
// We also pass in a function to toggle the state of the checkbox
//what that does is to toggle the isDone function defined in the tasks class

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteFunction;
  TasksTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteFunction,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
