import 'package:flutter/material.dart';
import '../models/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../actions/counter.dart';
import '../models/home.dart';
import '../pages/home.dart';

class HomeContainer extends StatelessWidget {
  final String title;

  HomeContainer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, Home>(
      converter: (store) => new Home(store.state.counter.value.toString(),
          () => store.dispatch(IncrementCounter())),
      builder: (context, model) {
        return new HomePage(key: key, title: title, model: model);
      },
    );
  }
}
