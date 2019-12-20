import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main()=> runApp(My_app());

class My_app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
              child: Column(
              children: <Widget>[
                Material(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My_image(),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(70.0)),
                ),

                Container(
                  height: 2.0,
                ),

                Text("Dipesh Neupane",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),)
            ],
          ),
          ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.deepOrange,
                    Colors.orange,
                  ]
                  ),
                ),
              ),

              CustumListTile(Icons.perm_identity, "About", ()=>{}),
              CustumListTile(Icons.whatshot, "Skills", ()=> {}),
              CustumListTile(Icons.work, "Portfilo", ()=>{}),
              CustumListTile(Icons.book, "Resume", ()=>{}),
              CustumListTile(Icons.contacts,"Contact", ()=>{}),
            ],
          ),
        ),
        body: My_body(),
      )
    );
  }
}

class CustumListTile extends StatelessWidget{
  String text;
  Function ontap;
  IconData icon;
  CustumListTile(this.icon, this.text, this.ontap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
        ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap:ontap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(icon),
                Container(width: 5.0,),
                Text(text,
                style: TextStyle(
                  fontSize: 16.0,
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class My_body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/me.jpg');
    Image image = Image(image: assetImage,
    fit: BoxFit.fill,);

    return Container(child: image,);
  }

}


class My_image extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    {
      AssetImage assetImage = AssetImage('images/me.jpg');
      Image image = Image(image: assetImage,
      fit: BoxFit.fill,);

      return Container(child: image,);
    }
  }

}