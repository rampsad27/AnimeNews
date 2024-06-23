import 'package:aniime_news/model/anime_model.dart';
import 'package:aniime_news/ui/screen/Home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(HomeEventDataRequest()),
      child: Scaffold(
        floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<HomeBloc>().add(
                      HomeEventPostRequest(animeModel: const AnimeModel()),
                    );
              },
              child: const Icon(Icons.add),
            );
          },
        ),
        appBar: AppBar(
          title: const Text("REST"),
        ),
        body: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state.homeStateEnum == HomeStateEnum.sent &&
                state.errorMessage == "") {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Post added successfully"),
                ),
              );
            } else if (state.homeStateEnum == HomeStateEnum.deleting) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Post deleted successfully"),
                ),
              );
            }
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: state.animeModel?.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              trailing: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        state.animeModel?[index].pictureUrl ??
                                            'default_image_url'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              title: Text(
                                  '${index + 1} ${state.animeModel?[index].title ?? "chaina"}'),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(state.animeModel?[index].type ?? 'N/A'),
                                  Text(state.animeModel?[index].airedOn ??
                                      "ccchaina"),
                                ],
                              ),
                            );
                          }))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
