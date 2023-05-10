import 'package:film_riverpod_test/model/films/film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FilmCard extends ConsumerWidget {
  const FilmCard({
    Key? key,
    required this.film,
  }) : super(key: key);

  final Film film;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => context.push('/${film.imdbId}'),
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            color: const Color(0xfff7f7f7),
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 200,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(film.poster.toString()),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "${film.title} (${film.year})",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(film.title.toString(),
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 3),
                        // Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
