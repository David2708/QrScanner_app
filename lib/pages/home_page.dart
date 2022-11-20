
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_scanner_app/pages/direcciones_page.dart';
import 'package:qr_scanner_app/pages/mapas_page.dart';

import 'package:qr_scanner_app/providers/scans_list_provider.dart';
import 'package:qr_scanner_app/providers/ui_provider.dart';

import 'package:qr_scanner_app/widgets/custom_navigatorBar.dart';
import 'package:qr_scanner_app/widgets/scan_buttom.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Historial', textAlign: TextAlign.center,),
        actions: [
          IconButton(
            onPressed: (){
              final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);
              scanListProvider.borrarTodos();
            }, 
            icon: const Icon(Icons.delete_forever)
          )
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const ScanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class _HomePageBody extends StatelessWidget {

  const _HomePageBody();

  @override
  Widget build(BuildContext context) {

    //Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    //Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.getSelectedMenuOpt;

    // Usar el SAcanListProvider
    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    

    switch( currentIndex ){
      case 0:
        scanListProvider.cargarScansPorTipo('geo');
        return const MapasPage();
      
      case 1:
        scanListProvider.cargarScansPorTipo('http');
        return const DireccionesPage();

      default:
        return const MapasPage();
    }

  }
}