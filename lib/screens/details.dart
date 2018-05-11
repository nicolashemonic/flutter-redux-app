import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String title;

  Details({Key key, @required this.title}) : super(key: key);

  @override
  DetailsState createState() => new DetailsState();
}

class DetailsState extends State<Details> {
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
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text("Flutter demo app using Redux for Dart."),
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
