import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/swag.dart';
import '../repository/swag_repository.dart';

part 'swag_state.dart';

class SwagCubit extends Cubit<SwagState> {
  final SwagRepository swagRepository;

  SwagCubit(this.swagRepository) : super(SwagsInitial());

  Future<void> getSwags() async {
    try {
      emit(SwagsLoading());
      final swags = await swagRepository.getSwags();
      emit(SwagsLoaded(swags));
    } on HttpException catch (e) {
      emit(SwagsError(e.message));
    }
  }
}
