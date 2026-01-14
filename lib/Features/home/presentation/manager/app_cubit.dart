import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/Features/home/presentation/manager/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());
  String playerName = "X";
  late final List<List<String>> _board = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];

  void changePlayerTurn() {
    if (playerName == "X") {
      playerName = "O";
      emit(PlayerOTurn());
    } else {
      playerName = "X";
      emit(PlayerXTurn());
    }
  }

  bool isCellEmpty({required int row, required int col}) {
    if (_board[row][col] == "") {
      return true;
    } else {
      return false;
    }
  }

  String checkWinner() {
    for (int i = 0; i < 3; i++) {
      if (_board[i][0] != "" &&
          _board[i][0] == _board[i][1] &&
          _board[i][1] == _board[i][2]) {
        return _board[i][0];
      }
    }

    //col
    for (int i = 0; i < 3; i++) {
      if (_board[0][i] != "" &&
          _board[0][i] == _board[1][i] &&
          _board[1][i] == _board[2][i]) {
        return _board[0][i];
      }
    }

    // left diagonal
    if (_board[0][0] != "" &&
        _board[0][0] == _board[1][1] &&
        _board[1][1] == _board[2][2]) {
      return _board[0][0];
    }
    //right diagonal
    if (_board[0][2] != "" &&
        _board[0][2] == _board[1][1] &&
        _board[1][1] == _board[2][0]) {
      return _board[0][2];
    }

    return "";
  }

  void restBoard(){
    _board.clear();
  }
}