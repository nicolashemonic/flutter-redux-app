import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../containers/counter.dart';

class Counter extends StatelessWidget {
  final CounterViewModel model;

  Counter({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Text(
          'You have pushed ${model.count} times!',
        ),
        new FlatButton(
          child: new Text("Increment"),
          onPressed: model.incrementCount,
          color: Theme.of(context).primaryColorLight,
        )
      ],
    );
  }
}
