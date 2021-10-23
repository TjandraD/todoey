import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:todoey/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("End to end application test", () {
    testWidgets("Add a new to-do in tasks list", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), "Do something here");
      await tester.pumpAndSettle();

      await tester.tap(find.byType(MaterialButton));
      await tester.pumpAndSettle();

      expect(find.text("Do something here"), findsOneWidget);
    });

    testWidgets("Update to-do status in tasks list",
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      await tester.tap(find.text("This is the first task"));
      await tester.pumpAndSettle();

      expect(find.text("This is the first task"), findsOneWidget);
    });

    testWidgets("Delete to-do status in tasks list",
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      await tester.longPress(
        find.text("This is the first task"),
      );
      await tester.pump();

      expect(find.text("This is the first task"), findsNothing);
    });
  });
}
