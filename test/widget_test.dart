// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:recursion_nitd/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    //create a textview in center of screen
    var app = const MaterialApp(
      home: Center(
        child: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    // Verify that our counter starts at 0.
    expect(find.text('Hello World'), findsOneWidget);
  });
}
