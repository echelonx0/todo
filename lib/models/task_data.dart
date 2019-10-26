import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List <Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Whiskey'),
    Task(name: 'Buy Candy'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  //Use this to create a getter for the item count, instead of the long taskdata.item count
  int get taskcount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}