import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.Name,
    this.UserName,
    this.Pass,
  });

  final String Name;
  final String UserName;
  final String Pass;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Name,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                Text(
                  "UserName:  " + UserName,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
                Text(
                  "PassWord:  " + Pass,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
class Data{
  // field
  String Name;
  String UserName;
  String Pass;
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = new List<Data>();
    var test = {Name= "facebook",
      UserName="test",
      Pass=test};
     data.add(),

    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: const Text('Pass APP'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'add',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <CustomListItem>[
              CustomListItem(
                Name: 'Facebook',
                UserName: 'test',
                Pass: 'test',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
