import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:test1/Models/Number.dart';

import '../Constant/Text1.dart';

class NumbersContainer extends StatefulWidget {
  const NumbersContainer({
    super.key,
    required this.number,
  });
  final Number number;

  @override
  State<NumbersContainer> createState() => _NumbersContainerState();
}

class _NumbersContainerState extends State<NumbersContainer> {
  Color _color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    const double value = 14;
    const double fontsized12 = 26;
    const double circlradius = 12;

    const double height2 = 300;
    return Container(
      margin: const EdgeInsets.all(value),
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 26, 190, 169), borderRadius: BorderRadius.circular(circlradius)),
      child: Column(
        children: [
          Image.network(
            widget.number.image,
            height: height2,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text1(
                color: Colors.white,
                text: 'EN',
                fontsized1: 26,
                fontweights: FontWeight.bold,
              ),
              Text1(
                color: Colors.white,
                text: 'JP',
                fontsized1: 26,
                fontweights: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text1(
                color: Colors.white,
                text: widget.number.en,
                fontsized1: fontsized12,
                fontweights: FontWeight.w500,
              ),
              Text1(
                color: Colors.white,
                text: widget.number.jp,
                fontsized1: fontsized12,
                fontweights: FontWeight.w500,
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
                    setState(() {
                      if (_color == Colors.grey) {
                        _color = Colors.red;
                      } else {
                        _color = Colors.grey;
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 28,
                    color: _color,
                  )),
              CircleAvatar(
                  backgroundColor: const Color.fromARGB(215, 255, 255, 255),
                  maxRadius: 22,
                  child: IconButton(
                      onPressed: () {
                        AudioCache player = AudioCache(prefix: 'sounds/numbers/');
                        player.play(widget.number.saound);
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
                      ))),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
