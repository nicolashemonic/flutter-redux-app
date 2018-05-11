import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/counter.dart' as models;

class Counter extends StatelessWidget {
  final models.Counter model;

  const Counter({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Text(
          'You have pushed ${model.count} times!',
        ),
        new FlatButton(
          key: new Key('counter_button'),
          child: new Text("Increment"),
          onPressed: model.incrementCount,
          color: Theme.of(context).primaryColorLight,
        )
      ],
    );
  }
}
