import 'package:covoit_campus/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("affiche le titre de l'application", (tester) async {
    await tester.pumpWidget(const CovoitCampusApp());
    expect(find.text("Covoit'Campus"), findsOneWidget);
  });
}