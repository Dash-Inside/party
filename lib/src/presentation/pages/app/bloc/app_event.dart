part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.load() = LoadAppEvent;
  const factory AppEvent.onPageChange({
    required int page,
  }) = PageChangeAppEvent;
}
