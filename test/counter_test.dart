// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:mockito/mockito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/models/counter.dart' as models;
import '../lib/widgets/counter.dart';

class AppMock extends StatelessWidget {
  final Widget body;
  const AppMock(this.body);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(body: body),
    );
  }
}

class CounterMock extends Mock implements models.Counter {}

void main() {
  testWidgets('Should display 0 count', (WidgetTester tester) async {
    await tester.pumpWidget(
      new AppMock(
        new Counter(
          model: new models.Counter(count: '0', incrementCount: () => null),
        ),
      ),
    );
    expect(find.text('You have pushed 0 times!'), findsOneWidget);
  });

  testWidgets('Should display 1 count', (WidgetTester tester) async {
    await tester.pumpWidget(
      new AppMock(
        new Counter(
          model: new models.Counter(count: '1', incrementCount: () => null),
        ),
      ),
    );
    expect(find.text('You have pushed 1 times!'), findsOneWidget);
  });

  testWidgets('Should call incrementCount()', (WidgetTester tester) async {
    var counterMock = new CounterMock();
    await tester.pumpWidget(
      new AppMock(
        new Counter(
          model: new models.Counter(
              count: '0', incrementCount: () => counterMock.incrementCount()),
        ),
      ),
    );
    await tester.tap(find.byKey(new Key('counter_button')));
    expect(verify(counterMock.incrementCount()).callCount, equals(1));
  });
}
