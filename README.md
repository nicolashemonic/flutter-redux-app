# Flutter Redux App

A [Flutter](https://flutter.io/) demo app that demonstrate how to implement [Redux](https://pub.dartlang.org/packages/redux) for [Dart](https://www.dartlang.org/dart-2).

## Project

* **Actions** contains Redux actions that can be triggered from widgets
* **Containers** is where Flutter's widgets are connected to Redux state
* **Models** describe the object model of widget and Redux's state
* **Reducers** contains Redux's reducers with business logic
* **Screens** contains Flutter's widgets that are screens (page)
* **Widgets** contains Flutter's widgets that are components

**app.dart** is where navigation live and where Redux's Store is provided to the app.  
**main.dart** is the main entry point of the app that initiliaze a new Redux's Store.
