import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes/main.dart';
void main() {
  testWidgets('La base muestra catálogo y permite abrir detalle y regresar', (tester) async {
    await tester.pumpWidget(const MarvelHeroesApp(locale: Locale('es')));
    await tester.pumpAndSettle();
    expect(find.text('Capitán América'), findsOneWidget);
    await tester.tap(find.text('Ver detalle').first);
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('detail-action')), findsOneWidget);
    await tester.ensureVisible(find.text('Volver')); await tester.tap(find.text('Volver'));  await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('search')), findsOneWidget);
  });
}
