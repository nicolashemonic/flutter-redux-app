import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/counter.dart' as models;

class Counter extends StatelessWidget {
  final models.Counter model;

  const Counter({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'You have pushed ${model.count} times!',
        ),
        FlatButton(
            key: Key('counter_button'),
            child: Text(
              "Increment",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: model.incrementCount,
            color: Colors.blue),
      ],
    );
  }
}
