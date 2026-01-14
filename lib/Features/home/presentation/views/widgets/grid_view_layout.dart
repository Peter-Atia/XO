import 'package:flutter/material.dart';
import 'grid_view_cell.dart';

class GridViewLayout extends StatelessWidget {
  const GridViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(1),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(1),
        child: GridViewCell(index: index,),
      ),
    );
  }
}
