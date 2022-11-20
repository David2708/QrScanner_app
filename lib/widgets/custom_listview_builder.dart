
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/scan_model.dart';
import '../providers/scans_list_provider.dart';
import '../utils/utils.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({
    Key? key,
    required this.scans,
    required this.scanListProvider, 
    required this.icon,
  }) : super(key: key);

  final List<ScanModel> scans;
  final ScanListProvider scanListProvider;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i){
        return Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.red[200],
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: const Icon(Icons.delete_forever_rounded),
              ),
            ),
          ),
          onDismissed: (direction) {
            Provider.of<ScanListProvider>(context, listen: false).borrarPorId(scans[i].id!, scans[i].tipo!);
          },
          child: ListTile(
            leading: Icon(icon, color: Theme.of(context).primaryColor,),
            title: Text(scans[i].valor),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => launchURL(context, scans[i])
          )
        );
      },
    );
  }
}

