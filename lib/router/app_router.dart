import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:xox/blocs/profile/profile_bloc.dart';
import 'package:xox/screens/game_screen.dart';
import 'package:xox/screens/game_vs_screen.dart';
import 'package:xox/screens/home_screens.dart';
import 'package:xox/screens/profile_screen.dart';
import 'package:xox/screens/setting_screen.dart';
import 'package:xox/screens/splash_screen.dart';
import 'package:xox/screens/start_game_screen.dart';



final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
      path: '/game',
      builder: (context, state) {
        final playerss = state.extra as Map;
        return GameScreen(
          players: playerss['players'] as List<String>,
        );
      }),
  GoRoute(
    path: '/profile',
    builder: (context, state) =>  BlocProvider(
      create: (context) => ProfileBloc(),
      child: const ProfileScreen(),
    ),
  ),
  GoRoute(
    path: '/start',
    builder: (context, state) => const StartGameScreen(),
  ),
  // GoRoute(
  //   path: '/vs',
  //   builder: (context, state) => const GameVsScreen(),
  // ),
  GoRoute(
    path: '/setting',
    builder: (context, state) => const SettingScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
      path: '/vs',
      builder: (context, state) {
        final playerss = state.extra as Map;
        return GameVsScreen(
          players: playerss['players'] as List<String>,
        );
      }),
  // GoRoute(
  //     path: '/details',
  //     builder: (context, state) {
  //       final details = state.extra as Map;
  //       return BlocProvider(
  //         create: (context) => DetailsCocktailBloc(details['id'] as int),
  //         child: DetailsCocktailScreen(
  //           id: details['id'],
  //         ),
  //       );
  //     }),
]);
