//------------------------------------- Israa Nabil Alghoul -------------------------------------
import 'package:first_project/cubit/CounterCubit/CounterCubit.dart';
import 'package:first_project/firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const screen());
}

class screen extends StatelessWidget {
  const screen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: firstScreen()));
  }
}
