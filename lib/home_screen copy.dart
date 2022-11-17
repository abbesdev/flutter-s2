import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/details.dart';
import 'package:myapp/grid_cell.dart';

class HomeScreenGrid extends StatelessWidget {
  const HomeScreenGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("G-Store Esprit"),
        ),
        body: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 1.0,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Details("dmc5.jpg", "Devil May Cry 5", 200)));
                  },
                  child: GridCell("dmc5.jpg", "Devil May Cry 5", 200)),
            );
          },
        ));
  }
}
