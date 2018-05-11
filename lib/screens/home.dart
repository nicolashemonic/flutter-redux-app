import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../containers/counter.dart';

class Home extends StatefulWidget {
  final String title;

  Home({Key key, @required this.title}) : super(key: key);

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Counter(),
          new FlatButton(
            child: new Text("View details"),
            onPressed: () => Navigator.of(context).pushNamed('/details'),
            color: Theme.of(context).primaryColorLight,
          )
        ],
      ),
    );
  }
}
