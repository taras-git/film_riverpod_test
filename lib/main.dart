import 'package:film_riverpod_test/model/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: FilmApp(),
  ));
}

class FilmApp extends ConsumerWidget {
  const FilmApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ThemeData();
    final films = <Search>[Search(title: 'StarWars', year: '1990')];

    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.blue,
        ),
      ),
      title: 'FilmApp',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Film title:',
                  ),
                  onChanged: (text) async {},
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: films.length,
                    itemBuilder: (context, index) {
                      final film = films[index];

                      return Container(
                        child: Text(film.title!),
                      );
                      // MovieCard(movie: movie);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
