import 'package:flutter/material.dart';
import '../models/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../actions/counter.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'You have pushed the button this many times:',
            ),
            new StoreConnector<AppState, String>(
              converter: (store) => store.state.counter.value.toString(),
              builder: (context, count) {
                return new Text(
                  count,
                  style: Theme.of(context).textTheme.display1,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: new StoreConnector<AppState, VoidCallback>(
        converter: (store) {
          return () => store.dispatch(new IncrementCounter());
        },
        builder: (context, callback) {
          return new FloatingActionButton(
            onPressed: callback,
            tooltip: 'Increment',
            child: new Icon(Icons.add),
          );
        },
      ),
    );
  }
}
