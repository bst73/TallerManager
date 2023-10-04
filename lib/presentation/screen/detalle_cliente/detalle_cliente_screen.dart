import 'package:flutter/material.dart';

class DetalleClienteScreen extends StatelessWidget {

  static const String name = 'detalle_cliente';

  const DetalleClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle Cliente'),
      ),
    );
  }
}