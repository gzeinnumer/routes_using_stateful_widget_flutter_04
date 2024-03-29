import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var routes = <String, WidgetBuilder>{
      MyItemsPage.routeName : (BuildContext contex) => new MyItemsPage(title : "MyItemPage Zein"),
    };
    return new MaterialApp(
      title: 'Flutter Demo Zein',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title:'Flutter Demo Home Page Zein'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key : key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var counter = 0;

  void _plusCounter(){
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }

  void _onButtonPressed(){
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = new IconButton(icon: new Icon(Icons.access_alarm), onPressed: _onButtonPressed,);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Dog'),
          new Text('Cat'),
          button
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _plusCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}

class MyItemsPage extends StatefulWidget{
  MyItemsPage({Key key, this.title}):super(key:key);
  static const String routeName = "/MyItemsPage";

  final String title;

  @override
  _MyItemsPageState createState() => new _MyItemsPageState();
}

  //setelah page terbuat maka akan terdaftar ke route secara otomatis ke,
  //routes: <String, WidgetBuilder>{
  //  MyItemsPage.routeName: (BuildContext context) => new MyItemsPage(title: "MyItemsPage"),
  //},
  // sehingga kita bisa pakai
  // Navigator.pushNamed(context, MyItemsPage.routeName);

class _MyItemsPageState extends State<MyItemsPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = new IconButton(
      icon: new Icon(Icons.arrow_back),
      onPressed: _onButtonPressed,
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Item 1'),
              new Text('Item 2'),
              button
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _onButtonPressed(){
    Navigator.pop(context);
  }

  void _onFloatingActionButtonPressed(){
    
  }
}