import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:film_riverpod_test/main.dart';
import 'package:film_riverpod_test/widgets/film_details.dart';
import 'package:film_riverpod_test/widgets/film_list.dart';
import 'package:film_riverpod_test/widgets/film_list.dart';

void main() {
  testWidgets('FilmApp screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(child: FilmApp()));

    await tester.pumpRealRouterApp(
      "/",
      (child) => ProviderScope(child: child),
    );
    await tester.pumpAndSettle();

    expect(find.byType(FilmsList), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
    expect(find.text('Please enter a film title'), findsOneWidget);
  });
}

extension PumpApp on WidgetTester {
  Future<void> pumpRealRouterApp(
    String location,
    Widget Function(Widget child) builder,
  ) {
    return pumpWidget(
      builder(
        MaterialApp.router(
          routeInformationParser: router(location).routeInformationParser,
          routerDelegate: router(location).routerDelegate,
        ),
      ),
    );
  }
}

GoRouter router([String? initialLocation]) => GoRouter(
      initialLocation: initialLocation ?? "/",
      routes: [
        GoRoute(
          path: "/",
          builder: (_, __) => const FilmsList(),
        ),
        GoRoute(
          path: "/:id",
          builder: (_, state) {
            final id = state.pathParameters['id'];
            return DetailsOfFilm(id: id!);
          },
        )
      ],
    );
