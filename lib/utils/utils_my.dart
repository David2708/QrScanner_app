import 'package:flutter/cupertino.dart';
import 'package:qr_scanner_app/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> launchpeticion(BuildContext context, ScanModel scan) async {
  final Uri url = Uri.parse(scan.valor);

  if (scan.tipo == 'http'){
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }else{
    // Navigator.pushNamed(context, 'mapa', arguments: scan);
  }

}


// Future<void> launchpeticionString(BuildContext context, scan) async {
//   final Uri url = Uri.parse(scan);
//     if (!await launchUrl(url)) {
//       throw 'Could not launch $url';
//     }
// }