import 'package:flutter/material.dart';

import '../Components/Family_Container.dart';
import '../Models/Family.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.favorite),
            )
          ],
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 75, 204, 187),
          elevation: 0,
          title: const Text(
            'Family',
            style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return FamilyContainer(family: familylist[index]);
          },
          itemCount: familylist.length,
        ));
  }
}
