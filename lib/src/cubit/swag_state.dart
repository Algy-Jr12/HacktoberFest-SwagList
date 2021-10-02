part of 'swag_cubit.dart';

@immutable
abstract class SwagState {}

class SwagsLoading extends SwagState {}

class SwagsLoaded extends SwagState {
  final SwagList swags;

  SwagsLoaded(this.swags);
}

class SwagsError extends SwagState {
  final String message;

  SwagsError(this.message);
}
