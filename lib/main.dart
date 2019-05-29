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
      home: PageSliderWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageSliderWidget extends StatefulWidget {
  @override
  _PageSliderWidgetState createState() => _PageSliderWidgetState();
}

class _PageSliderWidgetState extends State<PageSliderWidget> {
  double drag = 1.0;

  void methodDragVolume(value) {
    setState(() {
      drag = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Text('Drag Slider'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Slider(
                value: drag,
                min: 1.0,
                max: 10.0,
                onChanged: (double val) {
                  methodDragVolume(val);
                }),
            new Text('value : $drag')
          ],
        ),
      ),
    );
  }
}
