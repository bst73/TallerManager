import 'package:flutter/material.dart';

class ClienteScreen extends StatelessWidget {

  static const String name = 'cliente_screen';

  const ClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
    );
  }
}