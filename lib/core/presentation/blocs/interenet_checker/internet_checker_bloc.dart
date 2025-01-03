import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/internet_checker_bloc.freezed.dart';
part 'internet_checker_event.dart';
part 'internet_checker_state.dart';

class InternetCheckerBloc
    extends Bloc<InternetCheckerEvent, InternetCheckerState> {
  InternetCheckerBloc() : super(const _InternetCheckerState()) {
    on<InternetCheckerEvent>((event, emit) {});
    on<_Started>((event, emit) async {
      await emit.onEach(InternetConnection().onStatusChange, onData: (data) {
        emit(state.copyWith(status: data));
      });
    }, transformer: restartable());
  }
}
