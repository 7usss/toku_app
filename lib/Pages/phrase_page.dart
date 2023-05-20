import 'package:flutter/material.dart';
import 'package:test1/Pages/phrase_favorate.dart';

import '../Components/phrase_container.dart';
import '../Models/phrase.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Phrase',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return const PhraseFavorate();
                  })));
                },
                child: const Icon(Icons.favorite)),
          )
        ],
      ),
      body: ListView(children: [
        PhraseContainer(
          phrase: phraselist[0],
        ),
        PhraseContainer(
          phrase: phraselist[1],
        ),
        PhraseContainer(
          phrase: phraselist[2],
        ),
        PhraseContainer(
          phrase: phraselist[3],
        ),
      ]),
    );
  }
}
