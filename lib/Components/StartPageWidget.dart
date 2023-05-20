import 'package:flutter/material.dart';
import 'package:test1/Pages/Home_Page.dart';
import 'package:test1/Pages/Swicher_Page.dart';

class StartPageWidget extends StatelessWidget {
  const StartPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double right2 = 20;
    const double top2 = 55;
    const double radius = 12;
    var opacity = 0.5;
    const double blurRadius2 = 7;
    return ListView(
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Image.network(
            'https://cdn.discordapp.com/attachments/679377927611351119/1068924412461592656/Group_13.png',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned(
            left: 20,
            top: 50,
            child: Text(
              'Welcome\n hussam',
              style:
                  TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'FredokaOne'),
            ),
          ),
          Positioned(
            right: right2,
            top: top2,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) {
                  return const SwicherPage();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(opacity),
                        spreadRadius: 1,
                        blurRadius: blurRadius2,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: const Color.fromARGB(129, 87, 228, 216)),
                    borderRadius: BorderRadius.circular(radius)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Change\nTheam',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 60, 212, 205),
                            fontFamily: 'FredokaOne'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 114, 209, 196),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.network(
              'https://cdn.discordapp.com/attachments/679377927611351119/1068980206360068156/Group_1111.png'),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 22, bottom: 8),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (contaxt) {
                        return const HomePage();
                      }));
                    },
                    child: Image.asset('images/figma/Group 8.png')),
              ),
            ],
          ),
        )
      ],
    );
  }
}
