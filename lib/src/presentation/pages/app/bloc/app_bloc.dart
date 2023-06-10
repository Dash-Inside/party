import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party/core/errors/failure.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.loading()) {
    on<LoadAppEvent>(_onLoadAppEvent);
    on<PageChangeAppEvent>(_onPageChangeAppEvent);
  }

  FutureOr<void> _onLoadAppEvent(
    LoadAppEvent event,
    Emitter<AppState> emit,
  ) {}

  FutureOr<void> _onPageChangeAppEvent(
    PageChangeAppEvent event,
    Emitter<AppState> emit,
  ) {
    debugPrint(event.page.toString());
    emit(AppState.page(page: event.page));
  }
}
