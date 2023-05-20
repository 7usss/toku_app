import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Constant/Text1.dart';
import '../Constant/const.dart';
import '../Models/color.dart';

class ColorContainer extends StatefulWidget {
  const ColorContainer({
    super.key,
    required this.color,
  });
  final Color_ color;

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color color_ = Colors.grey;
  @override
  Widget build(BuildContext context) {
    const double value = 14;
    const double fontsized12 = 26;
    const double circlradius = 12;
    const double height2 = 300;
    const double maxRadius2 = 22;
    return Container(
      margin: const EdgeInsets.all(Const.kSpace),
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Color.fromARGB(255, 26, 26, 26), spreadRadius: 0, blurRadius: 0)],
          color: const Color.fromARGB(255, 26, 190, 169),
          borderRadius: BorderRadius.circular(circlradius)),
      child: Column(
        children: [
          Image.asset(
            widget.color.image,
            height: height2,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12),
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
                text: widget.color.en,
                fontsized1: fontsized12,
                fontweights: FontWeight.w500,
              ),
              Text1(
                color: Colors.white,
                text: widget.color.jp,
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
                    if (color_ == Colors.grey) {
                      color_ = Colors.red;
                    } else {
                      color_ = Colors.grey;
                    }
                  });
                },
                child: Icon(
                  Icons.favorite,
                  size: 34,
                  color: color_,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: maxRadius2,
                child: IconButton(
                    onPressed: () {
                      setState(() {});
                      AudioCache player = AudioCache(prefix: 'sounds/colors/');
                      player.play(widget.color.sound);
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
    );
  }
}
