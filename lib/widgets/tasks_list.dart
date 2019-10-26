import 'package:flutter/material.dart';
import 'package:todo/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone, //this passes the checked status of the task to the child list tile from the task class
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              deleteFunction: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskcount,
        );
      },
    );
  }
}
