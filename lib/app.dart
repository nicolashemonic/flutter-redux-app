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
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Redux App',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => Home(title: "Home"),
          '/details': (BuildContext context) => Details(title: "Details")
        },
      ),
    );
  }
}
