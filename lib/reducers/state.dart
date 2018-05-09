import "../models/state.dart";
import "../reducers/counter.dart";

AppState appStateReducer(AppState state, action) =>
    new AppState(counter: counterReducer(state.counter, action));
