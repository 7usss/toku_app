import 'package:flutter/material.dart';
import 'package:test1/Constant/Text1.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 204, 204),
        appBar: AppBar(
          title: const Text(
            'About us',
            style: TextStyle(fontFamily: 'FredokaOne'),
          ),
          backgroundColor: const Color.fromARGB(255, 47, 216, 179),
        ),
        body: Center(
          child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18)),
              margin: const EdgeInsets.all(14),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text1(text: 'Contact Us ', fontsized1: 34),
                  )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 44),
                    child: Expanded(
                      child: Text1(
                          text:
                              'Im so confused by your ridiculous meltdown that I must insist on some sort of explanation for your behavior towards me. It just doesnt make any sense. Theres no way that I deserved the treatment you gave me without an explanation or an apology for how out of line you have been.',
                          fontsized1: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://w7.pngwing.com/pngs/462/874/png-transparent-instagram-logo-icon-instagram-icon-text-logo-sticker-thumbnail.png',
                        height: 50,
                        width: 50,
                      ),
                      Image.network(
                        'https://www.pngall.com/wp-content/uploads/2016/07/Twitter-Download-PNG.png',
                        height: 50,
                        width: 50,
                      ),
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  )
                ],
              )),
        ));
  }
}
