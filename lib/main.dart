import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_scanner_app/pages/home_page.dart';
import 'package:qr_scanner_app/pages/mapa_page.dart';

import 'package:qr_scanner_app/providers/scans_list_provider.dart';
import 'package:qr_scanner_app/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
        ChangeNotifierProvider(create: (_) => ScanListProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Scanner',
        initialRoute: 'home',
        routes: {
          'home': ((context) => const HomePage()),
          'mapa': ((context) => const MapaPage())
        },
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
      ),
    );
  }
}