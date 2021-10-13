import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todoey/main.dart' as app;

void main() {
  group('Tasks Screen Tests', () {
    testWidgets('Should Have Todoey Title', (WidgetTester tester) async {
      await tester.pumpWidget(const app.MyApp());

      expect(find.text("Todoey"), findsOneWidget);
    });

    testWidgets('FAB Should Call onTap When Tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(const app.MyApp());

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(FloatingActionButton), findsOneWidget);
    });

    testWidgets('CheckboxListTile Should Call onChanged When Tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(const app.MyApp());

      await tester.tap(find.text("This is the first task"));
      await tester.pumpAndSettle();

      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
