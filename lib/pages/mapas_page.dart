

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/scans_list_provider.dart';
import '../widgets/custom_listview_builder.dart';

class MapasPage extends StatelessWidget {
   
  const MapasPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return Scaffold(
      body: CustomListViewBuilder(icon: Icons.map, scans: scans, scanListProvider: scanListProvider),
    );
  }
}

