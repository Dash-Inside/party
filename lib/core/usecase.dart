import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<T, P> {
  UseCase();

  Future<Either<Error, T>> call(P params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => const [];

  const NoParams();
}
