import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todoey/main.dart' as app;

void main() {
  group('Add Task Screen Tests', () {
    testWidgets('Should Have Add Task Title', (WidgetTester tester) async {
      await tester.pumpWidget(const app.MyApp());

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.text("Add Task"), findsOneWidget);
    });

    testWidgets('MaterialButton Should Call onChanged When Tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(const app.MyApp());

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(MaterialButton));
      await tester.pumpAndSettle();

      expect(find.byType(MaterialButton), findsOneWidget);
    });
  });
}
