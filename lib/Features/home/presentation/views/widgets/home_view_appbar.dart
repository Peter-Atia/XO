import 'package:flutter/material.dart';

class HomeViewAppbar extends StatelessWidget implements PreferredSizeWidget{
  const HomeViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Player X turn"),
      centerTitle: true,
      backgroundColor: Color(0xffdea5f8),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
