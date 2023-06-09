import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party/core/errors/failure.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.loading()) {
    on<LoadAppEvent>(_onLoadAppEvent);
  }

  FutureOr<void> _onLoadAppEvent(LoadAppEvent event, Emitter<AppState> emit) {}
}
