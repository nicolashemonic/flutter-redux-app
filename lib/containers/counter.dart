import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../models/states/app.dart';
import '../actions/counter.dart';
import '../models/counter.dart' as models;
import '../widgets/counter.dart' as widgets;

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, models.Counter>(
      converter: (store) => new models.Counter(
            count: store.state.counter.value.toString(),
            incrementCount: () => store.dispatch(
                  IncrementCounter(),
                ),
          ),
      builder: (context, model) => new widgets.Counter(model: model),
    );
  }
}
