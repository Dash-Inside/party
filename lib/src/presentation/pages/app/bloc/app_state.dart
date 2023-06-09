part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.loading() = _Loading;
  const factory AppState.page({
    required int page,
  }) = _Page;
  const factory AppState.failure({
    required Failure failure,
  }) = _Failure;
}
