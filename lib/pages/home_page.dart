



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/widgets/tasks_list.dart';

import 'add_task_screen.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Widget buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (context)=>AddTaskScreen()
          );
        },
),
      backgroundColor: Colors.lightBlueAccent,







        body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container (
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child:  Icon(Icons.list,color: Colors.lightBlueAccent,),
                ),
                SizedBox(height: 10,),
                Text("Todoey",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w700),),
                Text("${Provider.of<TaskData>(context).taskCount} Tasks",style: TextStyle(color: Colors.white,fontSize: 18),),


              ],
            ),

          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
            //color: Colors.white,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight:Radius.circular(20),bottomLeft: Radius.circular(20) )
            ),
            child: TaskList(),

          ),)
        ],
      )
    );
  }
}





