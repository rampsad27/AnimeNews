part of 'home_bloc.dart';

abstract class HomeEvent {}

class HomeEventDataRequest extends HomeEvent {}

class HomeEventPostRequest extends HomeEvent {
  final AnimeModel animeModel;

  HomeEventPostRequest({required this.animeModel});
}

class HomeEventDelete extends HomeEvent {
  final int id;

  HomeEventDelete({required this.id});
}
