import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/login.dart';

class Inscription extends StatefulWidget {
  final String image;
  final String title;
  final double price;
  const Inscription(this.image, this.title, this.price, {super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Inscription")),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "Assets/${widget.image}",
                    width: width - 32,
                  )
                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16),
                child: Container(
                    width: width - 32,
                    height: 70,
                    child: TextField(
                        decoration: new InputDecoration(
                      hintText: "Username",
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ))),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16),
                child: Container(
                    width: width - 32,
                    height: 70,
                    child: TextField(
                        decoration: new InputDecoration(
                      hintText: "Email",
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ))),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16),
                child: Container(
                    width: width - 32,
                    height: 70,
                    child: TextField(
                        decoration: new InputDecoration(
                      hintText: "Mot de passe",
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ))),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16),
                child: Container(
                    width: width - 32,
                    height: 70,
                    child: TextField(
                        decoration: new InputDecoration(
                      hintText: "Annee de naissance",
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ))),
              )
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16),
                child: Container(
                    width: width - 32,
                    height: 70,
                    child: TextField(
                        decoration: new InputDecoration(
                      hintText: "Addresse de facturation",
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ))),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Center(child: Text("S'inscrire"))),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Login("dmc5.jpg", "Devil May Cry 5", 200)));
                      },
                      child: Center(child: Text("Login")))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
