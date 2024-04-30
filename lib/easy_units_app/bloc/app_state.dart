part of 'app_bloc.dart';

sealed class AppState extends Equatable {
  const AppState(this.pageState);

  final PageState pageState;

  @override
  List<Object> get props => [];
}

final class AppInitial extends AppState {
  const AppInitial(super.pageState);
}

final class AppFetched extends AppState {
  const AppFetched(super.pageState);
}

class PageState extends Equatable {
  final bool isAuth;

  const PageState({this.isAuth = false});

  PageState copyWith({bool? isAuth}) {
    return PageState(
      isAuth: isAuth ?? this.isAuth,
    );
  }

  @override
  List<Object?> get props => [isAuth];
}