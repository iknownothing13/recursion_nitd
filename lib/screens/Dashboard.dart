import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myapp = MaterialApp(
        title: "MY APP",
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Top Bar",
            ),
          ),
          body: Center(
              child: Text.rich(TextSpan(text: "my", children: [
            const TextSpan(text: "ABC", style: TextStyle(fontSize: 75.0)),
            TextSpan(text: " The random number is : ${getNum()}", style: const TextStyle(fontSize: 50.0)),
          ]))),
        ));
    return myapp;
  }
}

int getNum() {
  Random random = Random();
  return random.nextInt(100);
}
