import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';
import 'screens/catalog_screen.dart';
void main() => runApp(const MarvelHeroesApp());
class MarvelHeroesApp extends StatelessWidget {
  const MarvelHeroesApp({super.key, this.locale});
  final Locale? locale;
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'MarvelHeroes UD2', debugShowCheckedModeBanner: false,
    locale: locale,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    theme: ThemeData(useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff33458f)),
      scaffoldBackgroundColor: const Color(0xfff5f6fa)),
    home: const CatalogScreen(),
  );
}
