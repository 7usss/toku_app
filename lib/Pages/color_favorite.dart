import 'package:flutter/material.dart';
import 'package:test1/Models/color.dart';

import '../Components/color_container.dart';

class ColorFavorite extends StatelessWidget {
  const ColorFavorite({super.key});

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
      body: ListView(children: [ColorContainer(color: colorlist[0]), ColorContainer(color: colorlist[2])]),
    );
  }
}
