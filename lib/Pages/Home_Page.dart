import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Components/Categorise_hor.dart';
import '../Components/drawe1.dart';
import '../Components/main_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double width30 = 26;
  final double height200 = 200;
  List<String> imgs = [
    'https://cdn.discordapp.com/attachments/679377927611351119/1070544353593937990/Frame_10.png',
    'https://cdn.discordapp.com/attachments/679377927611351119/1070540595061329981/Frame_9.png',
    'https://cdn.discordapp.com/attachments/679377927611351119/1070544373445566555/Frame_11.png',
  ];
  late YoutubePlayerController _controller;
  late PageController pc;
  final Uri _url = Uri.parse('https://www.wanikani.com');

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: 'r4IIGxAcRpg',
        flags: const YoutubePlayerFlags(isLive: true, showLiveFullscreenButton: true, autoPlay: false));
    // TODO: implement initState
    pc = PageController(viewportFraction: 0.9, initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer1(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(fontFamily: 'FredokaOne', fontSize: 24, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Image.network(
              'https://cdn.discordapp.com/attachments/679377927611351119/1070556368181919796/Ellipse_12.png',
            ),
            const Positioned(
              left: 20,
              top: 30,
              child: Text(
                'What do you want to\n learn ?',
                style:
                    TextStyle(fontSize: 34, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'FredokaOne'),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          MainTitle(
            width30: width30,
            title_text: 'Categorise',
          ),
          Categorise_hor(height200: height200),
          const SizedBox(
            height: 16,
          ),
          MainTitle(
            width30: width30,
            title_text: 'Learning resources',
          ),
          const SizedBox(
            height: 2,
          ),
          SizedBox(
            height: 250,
            width: double.infinity,
            child: PageView.builder(
                controller: pc,
                itemCount: imgs.length,
                itemBuilder: (context, pageposition) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: _launchUrl,
                      child: Image.network(
                        imgs[pageposition],
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }),
          ),
          MainTitle(
            width30: width30,
            title_text: 'Live class',
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
