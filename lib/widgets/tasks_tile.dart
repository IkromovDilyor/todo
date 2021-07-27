import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
    final bool isChecked;
   final checkboxCallback;
   final String taskTitle;
   TaskTile({required this.isChecked, this.checkboxCallback,required this.taskTitle});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked?TextDecoration.lineThrough :null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}



// class TaskTile extends StatefulWidget {
//
//
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked=false;
//    checkboxCallback(checkboxState){
//     setState(() {
//       isChecked=checkboxState;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text("this is task",
//       style: TextStyle(decoration:isChecked? TextDecoration.lineThrough :null),
//
//       ),
//       trailing: TaskCheckbox( checkboxState:isChecked, toggleCheckboxState:checkboxCallback),
//     );
//   }
// }
//
// class TaskCheckbox extends StatelessWidget {
//   // const TaskCheckbox({Key? key}) : super(key: key);
//   final bool checkboxState;
//    final toggleCheckboxState;
//    final String taskTitle;
//   TaskCheckbox({required this.checkboxState,required this.toggleCheckboxState,required this.taskTitle});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged:toggleCheckboxState,
//
//     );
//   }
// }





