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
      home: PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
      child: Column(children: <Widget>[
        new MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PagePertama()));
          },
          child: Text('Page Pertama'),
          color: Colors.lightBlue,
          textColor: Colors.white,
        ),
        new MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PageKedua()));
          },
          child: Text('Page Kedua'),
          color: Colors.lightGreen,
          textColor: Colors.white,
        ),
        new MaterialButton(
          onPressed: () {     Navigator.push(context,
              MaterialPageRoute(builder: (context) => PageKetiga()));},
          child: Text('Page Ketiga'),
          color: Colors.lime,
          textColor: Colors.white,
        )
      ]),
    ));
  }
}

class PagePertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: Text('Page Pertama'),
      ),
    );
  }
}

class PageKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: Text('Page Kedua'),
      ),
    );
  }
}
