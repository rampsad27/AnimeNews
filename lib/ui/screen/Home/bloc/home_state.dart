// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<AnimeModel>? animeModel;
  final HomeStateEnum? homeStateEnum;
  final String? errorMessage;

  const HomeState({
    this.animeModel,
    this.homeStateEnum,
    this.errorMessage = "kei",
  });
  @override
  // TODO: implement props
  List<Object?> get props => [animeModel, homeStateEnum, errorMessage];

  HomeState copyWith({
    List<AnimeModel>? animeModel,
    HomeStateEnum? homeStateEnum,
    String? errorMessage,
  }) {
    return HomeState(
      animeModel: animeModel ?? this.animeModel,
      homeStateEnum: homeStateEnum ?? this.homeStateEnum,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

// final class HomeInitial extends HomeState {}
enum HomeStateEnum { loading, success, error, sending, sent, deleting }
