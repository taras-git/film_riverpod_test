import 'package:film_riverpod_test/model/film_details/film_details.dart';
import 'package:film_riverpod_test/providers/film_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsOfFilm extends ConsumerWidget {
  const DetailsOfFilm({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filmDetail = ref.read(filmsProvider.notifier).loadFilmDetalis(id);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Film Details"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder<FilmDetails>(
          future: filmDetail, // a previously-obtained Future<String> or null
          builder: (context, snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              final film = snapshot.data!;

              children = <Widget>[
                Image.network(
                  film.poster.toString(),
                  errorBuilder: (context, exception, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.dangerous_outlined,
                        size: 50,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Text("${film.title} (${film.year})",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(film.plot.toString())),
              ];
            } else if (snapshot.hasError) {
              children = <Widget>[
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                )
              ];
            } else {
              children = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                )
              ];
            }
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
