import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/widgets/tasks_tile.dart';
import 'package:todo/model/task.dart';
import 'package:provider/provider.dart';
class TaskList extends StatefulWidget {
  //  final List<Task>task;
  // TaskList(this.task);



  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return ListView.builder(
          itemBuilder: (context, index){
            final tasks=taskData.task[index];
            return TaskTile(
              taskTitle: tasks.name,
              isChecked: tasks.isDone,
              checkboxCallback: (checkboxState){
                taskData.updateData(tasks);

              },

            );
          },
          itemCount:taskData.taskCount,
        );
      },
    );

  }
}
