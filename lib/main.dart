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
      home: PageAlertDialog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageAlertDialog extends StatefulWidget {
  @override
  _PageAlertDialogState createState() => _PageAlertDialogState();
}

class _PageAlertDialogState extends State<PageAlertDialog> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  SimpleDialog simpleDialog;

  void showSnackbar() {
    _key.currentState
        .showSnackBar(new SnackBar(content: new Text('This is Snackbar')));
  }

  void showSimpleDialog() {
    simpleDialog = new SimpleDialog(
      title: new Text('Warning'),
      children: <Widget>[
        new SimpleDialogOption(
          child: Text('Jakarta'),
          onPressed: () {
            print("jkt");
          },
        ),
        new SimpleDialogOption(
          child: Text('Padang'),
          onPressed: () {
            print("pdg");
          },
        ),
        new SimpleDialogOption(
          child: Text('Close'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
    showDialog(context: context, child: simpleDialog);
  }

  void showAlertDialog() {
    showDialog(
        context: context,
        child: new AlertDialog(
          title: Text('Warning'),
          content: Text('Anda yakin ingin keluar?'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                }),
            new IconButton(
                icon: Icon(Icons.check),
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Notification Widget'),
        backgroundColor: Colors.green,
      ),
      key: _key,
      body: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                showSimpleDialog();
              },
              child: new Text('Show Alert Dialog'),
            ),
            new MaterialButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text('Alert Dialog'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                showSnackbar();
              },
              child: Text('Show Snackbar'),
              color: Colors.orange,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Ini Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.green,
                  textColor: Colors.white
                );
              },
              child: Text('Show Toast'),
              color: Colors.purple,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
