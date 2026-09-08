import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onebuttonapp/main.dart';

void main() {
  testWidgets('shows one inert button', (WidgetTester tester) async {
    await tester.pumpWidget(const OneButtonApp());

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Press me'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Press me'), findsOneWidget);
  });
}
