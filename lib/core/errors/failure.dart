import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure {
  const factory Failure.serverError() = _ServerError;
}
