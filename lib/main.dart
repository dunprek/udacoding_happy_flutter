import 'package:flutter/material.dart';
import 'page_ketiga.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      home: PageImageAsset(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image pada URL'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
//          Image.asset('gambar/13301518.jpeg'),
          Text('Tayo'),
          SizedBox(
            height: 50,
            width: 50,
          ),
          Text(
            'image from url',
            style: TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                'https://deskqoe.id/static/img/pop_up_SQ-01.6aee2b1.jpg',
                height: 150,
                width: 150,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QRc9eaCANp6v5-bdmdOqZ5acC-KyzMw7w0lBXAUkktAH4AVTvA',
                height: 150,
                width: 150,
              ),
            ],
          )
        ],
      ),
    );
  }
}
