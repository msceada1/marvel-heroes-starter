import 'package:flutter/material.dart';
import '../model/hero_item.dart';
import '../l10n/app_localizations.dart';
// R1: incorpora un HeroStats reutilizable para mostrar poder e inteligencia.
class HeroCard extends StatelessWidget {
  const HeroCard({super.key, required this.hero, required this.favorite,
    required this.onOpen, required this.onFavorite});
  final HeroItem hero;
  final bool favorite;
  final VoidCallback onOpen;
  final VoidCallback onFavorite;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Card(clipBehavior: Clip.antiAlias,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        InkWell(onTap: onOpen, child: Image.asset(hero.image, height: 150,
          fit: BoxFit.contain, semanticLabel: hero.name)),
        Padding(padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: Text(hero.name, style: Theme.of(context).textTheme.titleLarge)),
        // R1_WIDGET
        Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Wrap(alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center, children: [
            TextButton(onPressed: onOpen, child: Text(t.details)),
            IconButton(key: ValueKey('fav-${hero.id}'),
              tooltip: favorite ? t.removeFavorite : t.addFavorite,
              onPressed: onFavorite,
              icon: Icon(favorite ? Icons.favorite : Icons.favorite_border)),
          ])),
      ]));
  }
}
