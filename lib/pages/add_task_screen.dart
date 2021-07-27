import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task.dart';
import 'package:todo/model/task_data.dart';


class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  void _printLatestValue() {
  }
     late String newTaskTitle;

     var newTaskTitleController=TextEditingController(); 
     
     @override
  void initState() {
    newTaskTitleController.addListener(_printLatestValue);
    super.initState();
  }

     @override
  void dispose() {
    newTaskTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return
      Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add Task",textAlign: TextAlign.center,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30),),
              TextField(
                controller: newTaskTitleController,
                autofocus: true,
                textAlign: TextAlign.center ,
                onChanged: (newText){
                  newTaskTitle=newText;
                },

              ),
              FlatButton(
                onPressed: (){
                  final tasks=Task(name:newTaskTitle);
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);


                },
                child: Text("Add",style: TextStyle(color: Colors.white),),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      );
  }
}


