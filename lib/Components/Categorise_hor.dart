import 'package:flutter/material.dart';

import '../Pages/Colors_Page.dart';
import '../Pages/Family_Page.dart';
import '../Pages/Number_page.dart';
import '../Pages/phrase_page.dart';

class Categorise_hor extends StatelessWidget {
  const Categorise_hor({
    super.key,
    required this.height200,
  });

  final double height200;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
            child: Image.network(
                'https://cdn.discordapp.com/attachments/679377927611351119/1069008088369201182/Frame_1.png'),
          ),
          const Spacer(
            flex: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
            child: Image.network(
                'https://cdn.discordapp.com/attachments/679377927611351119/1069008089279385631/Frame_2.png'),
          ),
          const Spacer(
            flex: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Colors_Page();
              }));
            },
            child: Image.network(
                'https://cdn.discordapp.com/attachments/679377927611351119/1069008089514262630/Frame_3.png'),
          ),
          const Spacer(
            flex: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasePage();
              }));
            },
            child: Image.network(
                'https://cdn.discordapp.com/attachments/679377927611351119/1069008089795264542/Frame_4.png'),
          )
        ],
      ),
    );
  }
}
