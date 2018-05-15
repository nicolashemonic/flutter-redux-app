import 'package:flutter/foundation.dart';

@immutable
class CounterState {
  final int value;

  const CounterState({this.value = 0});

  CounterState copyWith({int value}) {
    return new CounterState(value: value ?? this.value);
  }
}
