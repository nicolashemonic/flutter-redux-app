import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'models/states/app.dart';
import 'screens/home.dart';
import 'screens/details.dart';

class App extends StatelessWidget {
  final Store<AppState> store;

  App({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Redux App',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => new Home(title: "Home"),
          '/details': (BuildContext context) => new Details(title: "Details")
        },
      ),
    );
  }
}
