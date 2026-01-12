import 'package:flutter/material.dart';

class GridDesign extends StatelessWidget {
  const GridDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ColoredBox(
        color: Colors.black,
        child: GridView.builder(
          padding: EdgeInsets.all(1),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 9,
          itemBuilder: (context,index) =>Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
                color: Colors.white,child: Center(
                    child: Text(
                        "${index+1}",
                        style: TextStyle(
                          fontSize: 80
                        ),
                    )
                )
            ),
          ),
        ),
      ),
    );
  }
}
