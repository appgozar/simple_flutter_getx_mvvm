// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_flutter_mvvm/main.dart';

void main() {
  testWidgets('empty password and username test', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byKey(const ValueKey('username')), '');
    await tester.enterText(find.byKey(const ValueKey('password')), '');

    await tester.tap(find.byKey(const ValueKey('login')));
    await tester.pump();

    expect(find.text('Username is required'), findsOneWidget);
    expect(find.text('Password is required'), findsOneWidget);
  });

  testWidgets('short username and password test', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byKey(const ValueKey('username')), '123');
    await tester.enterText(find.byKey(const ValueKey('password')), '123');

    await tester.tap(find.byKey(const ValueKey('login')));
    await tester.pump();

    expect(find.text('Username is at least 4 character'), findsOneWidget);
    expect(find.text('Password is at least 4 character'), findsOneWidget);
  });
}
