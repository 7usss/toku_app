import 'package:flutter/material.dart';

import '../Components/Numbers_Container_List.dart';
import 'favorite_number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Numbers',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Favorite_Number();
                  }));
                },
                child: Icon(Icons.favorite)),
          )
        ],
      ),
      body: const NumbersContainerList(),
    );
  }
}
