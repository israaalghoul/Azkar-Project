import 'package:first_project/cubit/CounterCubit/CounterCubit.dart';
import 'package:first_project/cubit/CounterCubit/CounterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screens extends StatelessWidget {
  Screens({
    required this.text,
    required this.color,
  });

  Color color;
  String text;
  var v;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterInitState>(
        builder: (context, state) {
          if (text == "سبحان الله") {
            v = "${BlocProvider.of<CounterCubit>(context).x1}";
          } else if (text == "سبحان الله وبحمده") {
            v = "${BlocProvider.of<CounterCubit>(context).x2}";
          } else if (text == "سبحان الله و الحمد لله") {
            v = "${BlocProvider.of<CounterCubit>(context).x3}";
          } else if (text == "سبحان الله وبحمده\n سبحان الله العظيم") {
            v = "${BlocProvider.of<CounterCubit>(context).x4}";
          } else if (text == "لا حول ولا قوة إلا بالله") {
            v = "${BlocProvider.of<CounterCubit>(context).x5}";
          }
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 40, left: 25, right: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  height: 200,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(25)),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${text}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '$v',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (text == "سبحان الله") {
                        BlocProvider.of<CounterCubit>(context).addx1();
                      } else if (text == "سبحان الله وبحمده") {
                        BlocProvider.of<CounterCubit>(context).addx2();
                      } else if (text == "سبحان الله و الحمد لله") {
                        BlocProvider.of<CounterCubit>(context).addx3();
                      } else if (text ==
                          "سبحان الله وبحمده\n سبحان الله العظيم") {
                        BlocProvider.of<CounterCubit>(context).addx4();
                      } else if (text == "لا حول ولا قوة إلا بالله") {
                        BlocProvider.of<CounterCubit>(context).addx5();
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFF5DB6F1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (text == "سبحان الله") {
                      BlocProvider.of<CounterCubit>(context).resetx1();
                    } else if (text == "سبحان الله وبحمده") {
                      BlocProvider.of<CounterCubit>(context).resetx2();
                    } else if (text == "سبحان الله و الحمد لله") {
                      BlocProvider.of<CounterCubit>(context).resetx3();
                    } else if (text ==
                        "سبحان الله وبحمده\n سبحان الله العظيم") {
                      BlocProvider.of<CounterCubit>(context).resetx4();
                    } else if (text == "لا حول ولا قوة إلا بالله") {
                      BlocProvider.of<CounterCubit>(context).resetx5();
                    }
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF2CA714),
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        "Reset",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
