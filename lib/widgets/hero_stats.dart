import 'package:flutter/material.dart';

class HeroStats extends StatelessWidget {
  final int power;
  final int intelligence;

  const HeroStats({super.key, required this.power, required this.intelligence});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Chip(label: Text('Poder: $power')),
        Chip(label: Text('Inteligencia: $intelligence')),
      ],
    );
  }
}
