import 'package:flutter/material.dart';

class EntregaVehiculoScreen extends StatelessWidget {

  static const String name = 'cliente_screen';

  const EntregaVehiculoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrega Vehiculo'),
      ),
    );
  }
}