import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aniime_news/ui/screen/Home/bloc/home_bloc.dart';
import 'package:aniime_news/model/anime_model.dart';

class AnimeDetailScreen extends StatelessWidget {
  final AnimeModel anime;

  const AnimeDetailScreen({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${anime.title}',
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('Type: ${anime.type}'),
            Text('Aired on: ${anime.airedOn}'),
            // Add more details here
          ],
        ),
      ),
    );
  }
}
