import 'package:flutter/material.dart';

import 'package:challenge_budz/core/ui/ui.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      fixedColor: AppColors.blueTexts,
      selectedLabelStyle: AppFonts.smallTitle,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: AppFonts.smallTitle,
      iconSize: 24,
      items: const [
        BottomNavigationBarItem(
          label: 'Início',
          icon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: 'Jornadas',
          icon: Icon(Icons.grid_view_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Buddy IA',
          icon: Icon(Icons.android),
        ),
        BottomNavigationBarItem(
          label: 'Perfil',
          icon: Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
