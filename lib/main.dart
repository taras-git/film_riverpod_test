import 'package:film_riverpod_test/widgets/film_details.dart';
import 'package:film_riverpod_test/widgets/film_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    ProviderScope(
      child: FilmApp(),
    ),
  );
}

class FilmApp extends ConsumerWidget {
  FilmApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ThemeData();

    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.blue,
        ),
      ),
      title: 'Film App',
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const FilmsList(),
      ),
      GoRoute(
        path: '/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return DetailsOfFilm(id: id!);
        },
      ),
    ],
  );
}
