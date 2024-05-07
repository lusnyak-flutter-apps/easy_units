import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(): super(const AppInitial(PageState())){
    on<IsAuth>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2), (){
        emit(AppFetched(state.pageState.copyWith(isAuth: true)));
      });
    });
  }
}