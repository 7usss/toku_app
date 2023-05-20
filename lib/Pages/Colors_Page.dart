import 'package:flutter/material.dart';
import 'package:test1/Components/color_container.dart';
import 'package:test1/Models/color.dart';

import 'color_favorite.dart';

class Colors_Page extends StatelessWidget {
  const Colors_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Color',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const ColorFavorite();
                })));
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.favorite),
              ))
        ],
      ),
      body: ListView(children: [
        ColorContainer(color: colorlist[0]),
        ColorContainer(color: colorlist[1]),
        ColorContainer(color: colorlist[2]),
        ColorContainer(color: colorlist[3]),
      ]),
    );
  }
}
