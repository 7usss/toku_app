import 'package:flutter/material.dart';
import 'package:test1/Components/phrase_container.dart';
import 'package:test1/Models/phrase.dart';

class PhraseFavorate extends StatelessWidget {
  const PhraseFavorate({super.key});

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
        PhraseContainer(phrase: phraselist[1]),
      ]),
    );
  }
}
