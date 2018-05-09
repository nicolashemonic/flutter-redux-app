import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../actions/counter.dart';
import '../components/counter.dart';

typedef void IncrementCountFunction();

class CounterViewModel {
  final String count;
  final IncrementCountFunction incrementCount;

  const CounterViewModel({@required this.count, @required this.incrementCount});
}

class CounterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, CounterViewModel>(
      converter: (store) => new CounterViewModel(
          count: store.state.counter.value.toString(),
          incrementCount: () => store.dispatch(IncrementCounter())),
      builder: (context, model) {
        return new Counter(model: model);
      },
    );
  }
}
