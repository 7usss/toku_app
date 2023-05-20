import 'package:flutter/cupertino.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key,
    required this.title_text,
    required this.width30,
  });

  final double width30;
  final String title_text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.network(
            'https://cdn.discordapp.com/attachments/679377927611351119/1069042991362224228/Rectangle_9.png',
            width: width30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 2),
          child: Text(
            title_text,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 67, 219, 194),
            ),
          ),
        ),
      ],
    );
  }
}
