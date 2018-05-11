import "../models/states/counter.dart";
import "../actions/counter.dart";

CounterState counterReducer(CounterState counter, action) {
  if (action is IncrementCounter) {
    return counter.copyWith(value: counter.value + 1);
  }
  if (action is DecrementCounter) {
    return counter.copyWith(value: counter.value - 1);
  }
  return counter;
}
