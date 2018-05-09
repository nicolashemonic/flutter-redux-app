import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String title;

  DetailsPage({Key key, @required this.title}) : super(key: key);

  @override
  DetailsPageState createState() => new DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text("Flutter example app using Redux for Dart."),
            new FlatButton(
              child: new Text("View home"),
              onPressed: () => Navigator.of(context).pushNamed('/'),
              color: Theme.of(context).primaryColorLight,
            )
          ],
        ),
      ),
    );
  }
}
