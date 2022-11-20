
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_scanner_app/providers/ui_provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);

    int currentIndex = uiProvider.getSelectedMenuOpt;

    return BottomNavigationBar(
      onTap: ((int i) => uiProvider.setSelectedMenuOpt = i),
      elevation: 0,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map_sharp),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Mapa'
        ),
      ],
    );
  }
}