import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Constant/Text1.dart';
import '../Constant/const.dart';
import '../Models/Family.dart';

class FamilyContainer extends StatelessWidget {
  const FamilyContainer({
    super.key,
    required this.family,
  });
  final Family family;
  @override
  Widget build(BuildContext context) {
    const double value = 14;
    const double fontsized12 = 26;
    const double circlradius = 12;

    const double height2 = 300;
    return Container(
      margin: const EdgeInsets.all(Const.kSpace),
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 26, 190, 169), borderRadius: BorderRadius.circular(circlradius)),
      child: Column(
        children: [
          Image.network(
            family.image,
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
                text: family.en,
                fontsized1: fontsized12,
                fontweights: FontWeight.w500,
              ),
              Text1(
                color: Colors.white,
                text: family.jp,
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
              const Icon(
                Icons.favorite,
                size: 34,
                color: Colors.grey,
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(215, 255, 255, 255),
                maxRadius: 22,
                child: IconButton(
                  icon: const Icon(
                    Icons.volume_up,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    AudioCache player = AudioCache(prefix: 'sounds/family_members/');
                    player.play(family.sound);
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
                ),
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
