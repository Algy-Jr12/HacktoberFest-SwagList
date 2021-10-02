import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../models/swag.dart';
import '../repository/swag_repository.dart';

part 'swag_state.dart';

class SwagCubit extends Cubit<SwagState> {
  final SwagRepository swagRepository;

  SwagCubit(this.swagRepository) : super(SwagsLoading());

  Future<void> getSwags() async {
    try {
      emit(SwagsLoading());
      final swags = await swagRepository.getSwags();
      emit(SwagsLoaded(swags));
    } catch (e) {
      emit(SwagsError(e.toString()));
    }
  }
}
