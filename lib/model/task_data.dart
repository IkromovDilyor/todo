import 'package:flutter/cupertino.dart';
import 'package:todo/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task>_task=[

  ];

  UnmodifiableListView<Task> get task{
    return UnmodifiableListView(_task);
  }
int  get taskCount{
return _task.length;
}

void addTask(String newTaskTitle){
  final tasks=Task(name: newTaskTitle);
  _task.add(tasks);
  notifyListeners();
}
void updateData(Task task){
    task.toggleDone();
    notifyListeners();
}

}