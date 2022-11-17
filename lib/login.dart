import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  final String image;
  final String title;
  final double price;
  const Login(this.image, this.title, this.price, {super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("S'authentifier")),
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
                      hintText: "Password",
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ))),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Center(child: Text("S'authentifier"))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Center(child: Text("Creer un compte")))
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: const EdgeInsets.only(right: 2.0, left: 16),
                  child: Text("mot de passe oublie ?")),
              TextButton(
                onPressed: () {},
                child: Text("Reset Password"),
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
