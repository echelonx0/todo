//Here we construct the shape of the task object using the Task class. every task has a name and a status of done. Then it defines
//a method toggle done that changes the status of isdone from the default of false to something else and vice versa

class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone (){
    isDone = !isDone;
  }
}