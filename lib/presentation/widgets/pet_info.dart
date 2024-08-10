import 'package:flutter/material.dart';

import 'package:challenge_budz/presentation/widgets/widgets.dart';

class PetInfo extends StatelessWidget {
  const PetInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CardPetInfo(
            title: 'Sexo',
            infoText: '-',
          ),
          CardPetInfo(
            title: 'Idade',
            infoText: '1a 3m',
          ),
          CardPetInfo(
            title: 'Peso',
            infoText: '-',
          ),
        ],
      ),
    );
  }
}
