import 'package:flutter/material.dart';
import 'package:test1/Pages/aboutus.dart';

import '../Pages/calender.dart';
import '../Pages/review_page.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        topLeft: Radius.circular(25),
      )),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.discordapp.com/attachments/679377927611351119/1071251399381372958/Group_16.png'),
                    fit: BoxFit.cover),
                color: Color.fromARGB(255, 52, 247, 166)),
            child: Text(
              'User name:\n\nHussam\nhusm.hjili0@gmail.com',
              style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
            ),
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.group),
            iconColor: const Color.fromARGB(255, 0, 212, 194),
            title: const Text(
              'Live class schedule',
              style: TextStyle(fontSize: 16, fontFamily: 'FredokaOne'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Calender();
              }));
            },
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.feedback),
            iconColor: const Color.fromARGB(255, 0, 212, 194),
            title: const Text(
              'Contact us',
              style: TextStyle(fontSize: 16, fontFamily: 'FredokaOne'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Aboutus();
              }));
            },
          ),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.reviews),
            iconColor: const Color.fromARGB(255, 0, 212, 194),
            title: const Text(
              'Review',
              style: TextStyle(fontSize: 16, fontFamily: 'FredokaOne'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Review();
              }));
            },
          ),
        ],
      ),
    );
  }
}
