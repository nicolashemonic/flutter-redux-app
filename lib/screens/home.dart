import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../containers/counter.dart';

class Home extends StatefulWidget {
  final String title;

  Home({Key key, @required this.title}) : super(key: key);

  @override
  HomeState createState() => HomeState();
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Counter(),
          FlatButton(
            child: Text(
              "View details",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.of(context).pushNamed('/details'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
