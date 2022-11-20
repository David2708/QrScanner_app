import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:provider/provider.dart';
import 'package:qr_scanner_app/utils/utils.dart';

import '../providers/scans_list_provider.dart';

class ScanButtom extends StatelessWidget {
  const ScanButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () async {

        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3D8BEF', 'Cancelar', false, ScanMode.QR);
        // String barcodeScanRes = 'geo:11.020461521306682, -74.81355034089235';
        // String barcodeScanRes = 'https://www.google.com/maps/place/Conjunto+Residencial+Balcones+de+Andalucia+1/@11.0202091,-74.8132054,18z/data=!4m10!1m4!7m3!1m1!1s101773453955939806251!2e2!3m4!1s0x8ef42ded8bcac18b:0x43ff673269d088dd!8m2!3d11.0204252!4d-74.8135421?hl=es';

        final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

        if(barcodeScanRes != '-1'){
          final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);
          launchURL(context, nuevoScan);
        }

          




      },
      child: const Icon(Icons.filter_center_focus),
    );
  }
}