import 'package:flutter/material.dart';
import '../models/home.dart';

class HomePage extends StatelessWidget {
  final String title;
  final Home model;

  HomePage({Key key, this.title, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                'You have pushed the button this many times:',
              ),
              new Text(
                model.count,
                style: Theme.of(context).textTheme.display1,
              )
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: model.incrementCount,
          tooltip: 'Increment',
          child: new Icon(Icons.add),
        ));
  }
}
