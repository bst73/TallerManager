import 'package:go_router/go_router.dart';
import 'package:widgets_formatos/presentation/screen/cliente/cliente_screen.dart';
import 'package:widgets_formatos/presentation/screen/entrega_vehiculo/entrega_vehiculo_screen.dart';
import 'package:widgets_formatos/presentation/screen/home/home_screen.dart';
import 'package:widgets_formatos/presentation/screen/ordenes/ordenes_screen.dart';
import 'package:widgets_formatos/presentation/screen/recepcionar_vehiculo/recepcionar_vehiculo_screen.dart';
import 'package:widgets_formatos/presentation/screen/reportes/reportes_screen.dart';
import 'package:widgets_formatos/presentation/screen/vehiculos/vehiculo_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/cliente',
      name: ClienteScreen.name,
      builder: (context, state) => const ClienteScreen(),
    ),

    GoRoute(
      path: '/ordenes',
      name: OrdenesScreen.name,
      builder: (context, state) => const OrdenesScreen(),
    ),

    GoRoute(
      path: '/vehiculos',
      name: VehiculoScreen.name,
      builder: (context, state) => const VehiculoScreen(),
    ),

      GoRoute(
      path: '/recepcionar_vehiculo',
      name: RecepcionarVehiculoScreen.name,
      builder: (context, state) => const RecepcionarVehiculoScreen(),
    ),

    GoRoute(
      path: '/entrega_vehiculo',
      name: EntregaVehiculoScreen.name,
      builder: (context, state) => const EntregaVehiculoScreen(),
    ),

    GoRoute(
      path: '/reportes',
      name: ReporteScreen.name,
      builder: (context, state) => const ReporteScreen(),
    ),
  ]
);