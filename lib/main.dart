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
      home: PageList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: Text('Rendang'),
            trailing: Icon(Icons.add_to_queue),
          ),
          new ListTile(
            title: Text('Sambel'),
            trailing: Icon(Icons.pages),
          ),
          new ListTile(
            title: Text('Minuman'),
            trailing: Icon(Icons.local_drink),
          ),
          new ListTile(
            title: Text('Makanan'),
            trailing: Icon(Icons.fastfood),
          ),
          new ListTile(
            title: Text('Dan lainnya'),
            trailing: Icon(Icons.drive_eta),
          )
        ],
      ),
    );
  }
}

