
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/scans_list_provider.dart';
import '../widgets/custom_listview_builder.dart';

class DireccionesPage extends StatelessWidget {
   
  const DireccionesPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return Scaffold(
      body: CustomListViewBuilder(icon: Icons.home_outlined, scans: scans, scanListProvider: scanListProvider),
    );
  }
}