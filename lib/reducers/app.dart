import "../models/states/app.dart";
import "../reducers/counter.dart";

AppState appReducer(AppState state, action) =>
    new AppState(counter: counterReducer(state.counter, action));
