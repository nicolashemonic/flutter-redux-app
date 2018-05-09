import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'reducers/state.dart';
import 'models/state.dart';
import 'models/counter.dart';
import 'app.dart';

void main() {
  final store = new Store<AppState>(appStateReducer,
      initialState: new AppState(new Counter()));

  runApp(new MyApp(store: store));
}
