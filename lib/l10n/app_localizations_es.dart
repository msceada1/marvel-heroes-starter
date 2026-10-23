// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get catalog => 'Catálogo';

  @override
  String get favorites => 'Favoritos';

  @override
  String get search => 'Buscar por nombre';

  @override
  String get details => 'Ver detalle';

  @override
  String get addFavorite => 'Añadir a favoritos';

  @override
  String get removeFavorite => 'Quitar de favoritos';

  @override
  String get back => 'Volver';

  @override
  String get cancel => 'Cancelar';

  @override
  String get remove => 'Quitar';

  @override
  String get confirmTitle => 'Quitar favorito';

  @override
  String get confirmMessage => '¿Quieres quitar este héroe de favoritos?';

  @override
  String get noFavorites => 'Todavía no tienes favoritos.';

  @override
  String get noResults => 'No hay resultados.';

  @override
  String get pending => 'Completa el reto de favoritos.';

  @override
  String get about => 'Acerca de';

  @override
  String get memoryNote =>
      'Los favoritos se conservan solo durante esta ejecución.';

  @override
  String get power => 'Poder';

  @override
  String get intelligence => 'Inteligencia';
}
