import 'package:bloc/bloc.dart';
import 'package:first_project/cubit/CounterCubit/CounterState.dart';

class CounterCubit extends Cubit<CounterInitState> {
  CounterCubit() : super(CounterInitState());
  int x1 = 0;
  int x2 = 0;
  int x3 = 0;
  int x4 = 0;
  int x5 = 0;

  void addx1() {
    x1 += 1;
    emit(IncrementState());
  }

  void addx2() {
    x2 += 1;
    emit(IncrementState());
  }

  void addx3() {
    x3 += 1;
    emit(IncrementState());
  }

  void addx4() {
    x4 += 1;
    emit(IncrementState());
  }

  void addx5() {
    x5 += 1;
    emit(IncrementState());
  }

  void resetx1() {
    x1 = 0;
    emit(ResetState());
  }

  void resetx2() {
    x2 = 0;
    emit(ResetState());
  }

  void resetx3() {
    x3 = 0;
    emit(ResetState());
  }

  void resetx4() {
    x4 = 0;
    emit(ResetState());
  }

  void resetx5() {
    x5 = 0;
    emit(ResetState());
  }
}
