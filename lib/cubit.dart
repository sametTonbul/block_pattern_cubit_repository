import 'package:block_pattern_cubit_repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);

  var functionObjectRepository = MyRepository();

  void doPlus(String number1forPlus, String number2forPlus) {
    emit(functionObjectRepository.doPlusRepository(
        number1forPlus, number2forPlus));
  }

  void doMultiply(String number1forMultiply, String number2forMultiply) {
    emit(functionObjectRepository.doMultiplyRepository(
        number1forMultiply, number2forMultiply));
  }
}
