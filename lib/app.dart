import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'models/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'containers/home.dart';

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new HomeContainer(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
