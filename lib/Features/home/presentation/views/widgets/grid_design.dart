import 'package:flutter/material.dart';
import 'package:xo/Features/home/presentation/views/widgets/grid_view_layout.dart';

class GridDesign extends StatelessWidget {
  const GridDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ColoredBox(
        color: Colors.black,
        child: GridViewLayout(),
      ),
    );
  }
}
