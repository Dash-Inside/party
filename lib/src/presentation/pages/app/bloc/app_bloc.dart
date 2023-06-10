import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party/core/errors/failure.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_page_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.loading()) {
    on<_Load>(_onLoadAppEvent);
    on<_PageChange>(_onPageChangeAppEvent);
  }

  FutureOr<void> _onLoadAppEvent(
    _Load event,
    Emitter<AppState> emit,
  ) {
    emit(AppState.page(appPage: AppPageState.search()));
  }

  FutureOr<void> _onPageChangeAppEvent(
    _PageChange event,
    Emitter<AppState> emit,
  ) {
    emit(AppState.page(appPage: event.state));
  }
}
