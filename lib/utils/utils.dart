import 'package:flutter/cupertino.dart';
import 'package:qr_scanner_app/models/scan_model.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';



Future launchURL(BuildContext context, ScanModel scan) async {
  final url = scan.valor;
  if(scan.tipo == 'http'){
   //Abrir el sitio web
     if (!await launchUrlString(url, mode: LaunchMode.externalApplication)) {
          throw 'Could not launch $url';    
    } 
 
  }  else{
      Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
 
}



























// Future<void> launchURLo(BuildContext context, ScanModel scan) async {

//   final url = scan.valor;
 
//   if (scan.tipo == 'http') {
//     //abrir el sitio web
//     if (await canLaunchUrl(Uri.parse(url))) {
//       await launchUrl(Uri.parse(url));
//     } else {
//       throw 'Could not launch $url';
//     }
//   } else {
//     print('geo!!');
//   }
// }

// Future launchURL(BuildContext context, ScanModel scan) async {
//   final url = scan.valor;
//   if(scan.tipo == 'http'){
 
//     //Abrir el sitio web
//     await launchUrlString(url);
   
//     if (!await launchUrlString(url, mode: LaunchMode.externalApplication )) {
//       throw 'Could not launch $url';    
//     } 
 
//   }  else{
//       Navigator.pushNamed(context, 'mapa', arguments: scan);
//   }
 
// }

