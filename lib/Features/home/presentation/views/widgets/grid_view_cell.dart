import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/Features/home/presentation/views/widgets/pop_up_dialog.dart';
import '../../manager/app_cubit.dart';
import '../../manager/app_states.dart';

class GridViewCell extends StatelessWidget {
  const GridViewCell({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String playerName = BlocProvider.of<AppCubit>(
          context,
        ).playerName;
        BlocProvider.of<AppCubit>(context).fillCell(
          row: (index / 3).toInt(),
          col: index % 3,
          playerName: playerName,
        );
        String winner = BlocProvider.of<AppCubit>(
          context,
        ).winner;
        //check winner
        if (winner == "X" || winner == "O") {
          showDialog(
            context: context,
            builder: (context) {
              return ShowAlertDialog(
                winner: winner,
              );
            },
          );
          return;
        }

        if(BlocProvider.of<AppCubit>(context).cellsFilled ==9){
          showDialog(
            context: context,
            builder: (context) {
              return ShowAlertDialog();
            },
          );
        }


      },

      child: Container(
        color: Colors.white,
        child: Center(
          child: BlocBuilder<AppCubit, AppStates>(
            builder: (context, state) => Text(
              BlocProvider.of<AppCubit>(context).board[(index / 3)
                  .toInt()][index % 3],
              style: TextStyle(fontSize: 80),
            ),
          ),
        ),
      ),
    );
  }
}
