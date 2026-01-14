import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo/Features/home/presentation/manager/app_cubit.dart';
import 'package:xo/Features/home/presentation/manager/app_states.dart';

class HomeViewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) => Text(
          "Player ${BlocProvider.of<AppCubit>(context).playerName} turn",
        ),
      ),
      centerTitle: true,
      leading: IconButton(onPressed: (){
        BlocProvider.of<AppCubit>(context).restBoard();
      }, icon: Icon(Icons.restart_alt)),
      backgroundColor: Color(0xffdea5f8),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
