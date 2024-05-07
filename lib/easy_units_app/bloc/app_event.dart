part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class IsAuth extends AppEvent {}

class AddPermissions extends AppEvent {}