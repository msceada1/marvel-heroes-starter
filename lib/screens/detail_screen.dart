import 'package:flutter/material.dart';
import '../model/hero_item.dart';
import '../l10n/app_localizations.dart';
// El detalle devuelve una intención; el catálogo es dueño de los favoritos.
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.hero, required this.favorite});
  final HeroItem hero;
  final bool favorite;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(appBar: AppBar(title: Text(hero.name)),
      body: SafeArea(child: SingleChildScrollView(padding: const EdgeInsets.all(20),
        child: Center(child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 640),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Image.asset(hero.image, height: 230, semanticLabel: hero.name),
            const SizedBox(height: 16),
            Text(hero.description, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 12),
            // R1_DETAIL
            const SizedBox(height: 12),
            FilledButton.icon(key: const ValueKey('detail-action'),
              onPressed: () => Navigator.pop(context, true),
              icon: Icon(favorite ? Icons.favorite : Icons.favorite_border),
              label: Text(favorite ? t.removeFavorite : t.addFavorite)),
            TextButton(onPressed: () => Navigator.pop(context, false), child: Text(t.back)),
          ]))))));
  }
}
