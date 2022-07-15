import 'package:app_one/list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "the stateful widget",
    home: StudentNames(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my list view",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("the big list")),
        body: myBigList(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
                debugPrint("add new item");

            }, child: Icon(Icons.add), tooltip: "add new item"),
      ),
    );
  }
}



class StudentNames extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentNames();
  }

}

class _StudentNames extends State<StudentNames> {
    String student = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( title: Text("stateful project"),),
      body:
      Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
        TextField(
          onChanged: (String userInput){
            setState(() {
              student = userInput;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text("the student is : $student"),
        )]),
      )
    );
  }

}