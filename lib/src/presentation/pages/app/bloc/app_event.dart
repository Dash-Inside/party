part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.load() = _Load;
  const factory AppEvent.onPageChange({
    required AppPageState state,
  }) = _PageChange;
}
