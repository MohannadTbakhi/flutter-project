
import 'package:flutter/material.dart';

Widget myListView() {
  var list = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.alarm),
        title: Text("my alarm"),
        subtitle: Text("the body of the alarm list"),
        trailing: Icon(Icons.accessibility),
      ),
      ListTile(
        leading: Icon(Icons.adb),
        title: Text("my android"),
        subtitle: Text("the body of the android list"),
        trailing: Icon(Icons.image),
      )
    ],
  );
  return list;
}

List<String> getDataSource() {
  var items = List<String>.generate(1000, (i) => "item ${i + 1}");
  return items;
}

Widget myBigList() {
  var items = getDataSource();
  var listView = ListView.builder(itemBuilder: (context, i) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text(
      items[i]),
    subtitle: Text("mohannad"),
    onTap: (){debugPrint("list num ${items[i]}");},
    );
  });
  return listView;
}


