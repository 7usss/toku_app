import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Constant/Text1.dart';
import '../Constant/const.dart';
import '../Models/phrase.dart';

class PhraseContainer extends StatefulWidget {
  const PhraseContainer({
    super.key,
    required this.phrase,
  });
  final Phrase phrase;

  @override
  State<PhraseContainer> createState() => _PhraseContainerState();
}

class _PhraseContainerState extends State<PhraseContainer> {
  Color color1 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    const double value = 14;
    const double fontsized12 = 26;
    const double circlradius = 12;

    const double height2 = 300;
    const double fontsized13 = 26;
    return Container(
      margin: const EdgeInsets.all(Const.kSpace),
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.cyan),
          boxShadow: const [BoxShadow(color: Color.fromARGB(255, 119, 170, 168), spreadRadius: 1, blurRadius: 2)],
          color: const Color.fromARGB(255, 26, 190, 169),
          borderRadius: BorderRadius.circular(circlradius)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text1(
                  color: Colors.white,
                  text: 'EN',
                  fontsized1: fontsized13,
                  fontweights: FontWeight.bold,
                ),
                const SizedBox(
                  width: value,
                ),
                Expanded(
                  child: Text1(
                    color: Colors.white,
                    text: widget.phrase.en,
                    fontsized1: fontsized13,
                    fontweights: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text1(
                  color: Colors.white,
                  text: 'JP',
                  fontsized1: fontsized12,
                  fontweights: FontWeight.bold,
                ),
                const SizedBox(
                  width: value,
                ),
                Expanded(
                  child: Text1(
                    color: Colors.white,
                    text: widget.phrase.jp,
                    fontsized1: fontsized12,
                    fontweights: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {});
                      if (color1 == Colors.grey) {
                        color1 = Colors.red;
                      } else {
                        color1 = Colors.grey;
                      }
                    },
                    child: Icon(
                      Icons.favorite,
                      color: color1,
                      size: 34,
                    )),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 22,
                  child: IconButton(
                      onPressed: () {
                        AudioCache player = AudioCache(prefix: 'sounds/phrases/');
                        player.play(widget.phrase.sound);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Back'))
                                ],
                                title: const Text('Playing Sound..'),
                              );
                            });
                      },
                      icon: const Icon(
                        Icons.volume_up,
                        color: Colors.grey,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
