import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_data.dart';
import 'package:todo/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
// class Level1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level2(),
//     );
//   }
// }
// class Level2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         MyTextField(),
//         Level3()
//
//       ],
//
//     );
//   }
// }
// class Level3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(Provider.of<Data>(context).data),
//     );
//   }
// }
// class MyText extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Text(Provider.of<Data>(context,listen: false).data);
//   }
//
// }
//
// class MyTextField extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return TextField(
//       onChanged: (newText){
//         Provider.of<Data>(context,listen: false).changeString(newText);
//
//
//
//       },
//     );
//
//   }
//
// }
//
// class Data extends ChangeNotifier{
//    String data="Some data";
//    void changeString(String newString){
//      data=newString;
//      notifyListeners();
//    }
//
// }





