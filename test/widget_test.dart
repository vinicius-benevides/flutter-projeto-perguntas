import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:projeto_perguntas/main.dart';

void main() {
  testWidgets('App widget is MaterialApp', (WidgetTester tester) async {
    await tester.pumpWidget(const PerguntaApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
