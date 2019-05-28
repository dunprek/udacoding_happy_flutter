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
      home: PageTabBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageTabBar extends StatefulWidget {
  @override
  _PageTabBarState createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar app'),
        backgroundColor: Colors.green,
        bottom: new TabBar(controller: tabController, tabs: <Widget>[
          new Tab(icon: new Icon(Icons.home),),
          new Tab(icon: new Icon(Icons.data_usage),),
          new Tab(icon: new Icon(Icons.dashboard),),
          new Tab(icon: new Icon(Icons.close),),
        ]),
      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new Center(
          child: new Text("welcome to home"),
        ),
        new Center(
          child: new Text("welcome to datausage"),
        ),
        new Center(
          child: new Text("welcome to dashboard"),
        ),
        new Center(
          child: new Text("welcome to close"),
        ),
      ]),
    );
  }
}
