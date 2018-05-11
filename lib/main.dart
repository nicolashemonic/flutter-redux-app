import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'reducers/app.dart';
import 'models/states/app.dart';
import 'models/states/counter.dart';
import 'app.dart';

void main() {
  final store = new Store<AppState>(appReducer,
      initialState: new AppState(counter: new CounterState()));

  runApp(new App(store: store));
}
