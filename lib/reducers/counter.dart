import "../models/counter.dart";
import "../actions/counter.dart";

Counter counterReducer(Counter counter, action) {
  if (action is IncrementCounter) {
    return counter.copyWith(value: counter.value + 1);
  }
  if (action is DecrementCounter) {
    return counter.copyWith(value: counter.value - 1);
  }
  return counter;
}
