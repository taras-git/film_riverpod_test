import 'package:film_riverpod_test/providers/film_provider.dart';
import 'package:film_riverpod_test/widgets/film_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilmsList extends ConsumerWidget {
  const FilmsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final films = ref.watch(filmsProvider).films;
    final isLoading = ref.watch(filmsProvider).isLoading;
    final errorMessage = ref.watch(filmsProvider).errorMessage;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: TextField(
                autocorrect: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Film Title: (min: 3 letters)',
                ),
                onSubmitted: (title) async {
                  if (title.length > 2) {
                    await ref.read(filmsProvider.notifier).loadFilms(title);
                  }
                },
              ),
            ),
            if (errorMessage.isNotEmpty)
              const Text('Nothing found, please try again')
            else if (!isLoading && films.isEmpty)
              const Text('Please enter a film title')
            else if (isLoading)
              const CircularProgressIndicator()
            else
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: films.length,
                    itemBuilder: (context, index) {
                      final film = films[index];
                      return FilmCard(film: film);
                    },
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
