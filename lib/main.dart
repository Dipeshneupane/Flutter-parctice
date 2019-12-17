import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Title"),
        ),
        body: Container(
          child: Center(
            child: Text("My Page"),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                curve: Curves.bounceIn,
                child: Text("My Drawer"),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    width: 5.0,
                    color: Colors.blueAccent,

                  )
                ),
              ),
                RaisedButton(
                child: ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Add More"),
                  subtitle: Text("Add note"),
                  trailing: Icon(Icons.delete),
                ),
                  onPressed: (){},
              ),

              ListTile(
                leading: Icon(Icons.add),
                title: Text("Add More"),
                subtitle: Text("Add note"),
                trailing: Icon(Icons.delete),
              )
            ],
          ),
        ),
      )
    );
  }
}
