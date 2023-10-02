import 'package:go_router/go_router.dart';
import 'package:widgets_formatos/presentation/screen/cards/cards_screen.dart';
import 'package:widgets_formatos/presentation/screen/buttons/buttons_screen.dart';
import 'package:widgets_formatos/presentation/screen/home/home_screen.dart';
import 'package:widgets_formatos/presentation/screen/progress/progress_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonScreen.name,
      builder: (context, state) => const ButtonScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
  ]
);