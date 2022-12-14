import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/details.dart';
import 'package:myapp/home_screen%20copy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("G-Store Esprit"),
          IconButton(
            icon: Icon(Icons.grid_3x3),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreenGrid()));
            },
          )
        ],
      )),
      body: ListView(children: [
        Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("dmc5.jpg", "Devil May Cry 5", 200)));
                },
                child: Cell("dmc5.jpg", "Devil May Cry 5", 200)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("dmc5.jpg", "Devil May Cry 5", 200)));
                },
                child: Cell("dmc5.jpg", "Devil May Cry 5", 200)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("dmc5.jpg", "Devil May Cry 5", 200)));
                },
                child: Cell("dmc5.jpg", "Devil May Cry 5", 200)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("dmc5.jpg", "Devil May Cry 5", 200)));
                },
                child: Cell("dmc5.jpg", "Devil May Cry 5", 200)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("dmc5.jpg", "Devil May Cry 5", 200)));
                },
                child: Cell("dmc5.jpg", "Devil May Cry 5", 200)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("dmc5.jpg", "Devil May Cry 5", 200)));
                },
                child: Cell("dmc5.jpg", "Devil May Cry 5", 200)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("fifa.jpg", "Fifa 22", 220)));
                },
                child: Cell("fifa.jpg", "Fifa 22", 220)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("minecraft.jpg", "Minecraft", 150)));
                },
                child: Cell("minecraft.jpg", "Minecraft", 150)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details("nfs.jpg", "Need For Speed", 100)));
                },
                child: Cell("nfs.jpg", "Need For Speed", 100)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(
                              "rdr2.jpg", "Red Dead Redemption 2", 150)));
                },
                child: Cell("rdr2.jpg", "Red Dead Redemption 2", 150))
          ],
        )
      ]),
    );
  }
}
