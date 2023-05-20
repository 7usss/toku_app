import 'package:flutter/material.dart';

import '../Components/StartPageWidget.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Toku',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
      ),
      body: const StartPageWidget(),
    );
  }
}
