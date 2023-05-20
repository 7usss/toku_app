import 'package:flutter/material.dart';
import 'package:test1/Models/Number.dart';

import '../Components/Numbers_Container.dart';

class Favorite_Number extends StatelessWidget {
  const Favorite_Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Favorite',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
      ),
      body: ListView(children: [
        NumbersContainer(
          number: numberslist[0],
        )
      ]),
    );
  }
}
