// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get catalog => 'Catalog';

  @override
  String get favorites => 'Favorites';

  @override
  String get search => 'Search by name';

  @override
  String get details => 'View details';

  @override
  String get addFavorite => 'Add to favorites';

  @override
  String get removeFavorite => 'Remove favorite';

  @override
  String get back => 'Back';

  @override
  String get cancel => 'Cancel';

  @override
  String get remove => 'Remove';

  @override
  String get confirmTitle => 'Quitar favorito';

  @override
  String get confirmMessage => '¿Quieres quitar este héroe de favoritos?';

  @override
  String get noFavorites => 'Todavía no tienes favoritos.';

  @override
  String get noResults => 'No hay resultados.';

  @override
  String get pending => 'Complete the favorites challenge.';

  @override
  String get about => 'About';

  @override
  String get memoryNote => 'Favorites are kept only during this run.';

  @override
  String get power => 'Power';

  @override
  String get intelligence => 'Intelligence';
}
