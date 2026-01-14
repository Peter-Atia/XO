import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/Features/home/presentation/manager/app_cubit.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({super.key, this.winner});
  final String? winner;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        winner == null?
        "":
        "Winner!!!",
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      content: Text(
        winner == null
            ? "The board is totally filled play again"
            :"Player $winner wins!",
        style: const TextStyle(fontSize: 20),
      ),
      actions: [
        TextButton(
          onPressed: () {
            BlocProvider.of<AppCubit>(context).restBoard();
            Navigator.pop(context); // close dialog
          },
          child: const Text("Play Again"),
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // close dialog
          },
          child: const Text("OK"),
        ),
      ],
    );
  }

  /*void showWinnerDialog(BuildContext context, String winner) {
    showDialog(
      context: context,
      barrierDismissible: false, // user can't close by clicking outside
      builder: (context) {
        return AlertDialog(
          title: Text(
            winner == "" ? "Draw!" : "Winner",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          content: Text(
            winner == "" ? "No one won the game." : "$winner wins!",
            style: const TextStyle(fontSize: 20),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }*/
}
