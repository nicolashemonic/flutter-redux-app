import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String title;

  Details({Key key, @required this.title}) : super(key: key);

  @override
  DetailsState createState() => DetailsState();
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Flutter demo app using Redux for Dart."),
            FlatButton(
              child: Text(
                "View home",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Navigator.of(context).pushNamed('/'),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
