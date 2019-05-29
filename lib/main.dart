import 'package:flutter/material.dart';
import 'page_ketiga.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageButton(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {},
            child: Text('button raised'),
          ),
          new FlatButton(
            onPressed: () {},
            child: Text('button FLAT'),
          ),
          new MaterialButton(
            onPressed: () {},
            child: Text('button MATERIAL'),
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
