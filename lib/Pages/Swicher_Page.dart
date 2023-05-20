import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SwicherPage extends StatefulWidget {
  const SwicherPage({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<SwicherPage> {
  bool isSwitched = false;
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitched ? const Color.fromARGB(95, 95, 95, 95) : Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Toku',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 105,
          width: 250,
          margin: const EdgeInsets.all(54),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 173, 173, 173)),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Change The theam ',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                Center(
                  child: Switch(
                    activeTrackColor: const Color.fromARGB(255, 63, 63, 63),
                    activeColor: const Color.fromARGB(255, 27, 27, 27),
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = !isSwitched;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
