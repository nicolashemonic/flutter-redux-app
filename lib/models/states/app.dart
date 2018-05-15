import 'package:flutter/foundation.dart';
import 'counter.dart';

@immutable
class AppState {
  final CounterState counter;

  const AppState({@required this.counter});
}
