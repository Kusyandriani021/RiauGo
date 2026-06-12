// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:riau_go/screens/splash_screen.dart';


void main() {
  testWidgets('SplashScreen renders initial widgets', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SplashScreen(),
      ),
    );

    // Verifikasi teks yang memang ada di SplashScreen.
    expect(find.text('RiauGo'), findsOneWidget);
    expect(find.text('Explore Riau, Go Anywhere'), findsOneWidget);
    expect(find.text('Mulai  →'), findsOneWidget);
  });
}

