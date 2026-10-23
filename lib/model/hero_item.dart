class HeroItem {
  const HeroItem(this.id, this.name, this.power, this.intelligence, this.description);
  final String id;
  final String name;
  final int power;
  final int intelligence;
  final String description;
  String get image => 'assets/heroes/$id.webp';
}
