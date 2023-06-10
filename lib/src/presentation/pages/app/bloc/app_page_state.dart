part of 'app_bloc.dart';

@freezed
abstract class AppPageState with _$AppPageState {
  const factory AppPageState.search() = _Search;
  const factory AppPageState.teammate() = _Teammate;
  const factory AppPageState.etc() = _Etc;
}
