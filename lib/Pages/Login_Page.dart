import 'package:flutter/material.dart';
import 'package:test1/Pages/Start_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailtextfield = TextEditingController();
  final email2textfield = TextEditingController();

  @override
  void dispose() {
    emailtextfield.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 204, 187),
        elevation: 0,
        title: const Text(
          '',
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                'https://cdn.discordapp.com/attachments/679377927611351119/1069029279616217148/Ellipse_12.png',
              ),
              const Positioned(
                top: 100,
                left: 20,
                child: Text(
                  'What should we call\n you ?',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'FredokaOne'),
                ),
              ),
              const Positioned(
                top: 20,
                left: 150,
                child: Text(
                  'Toko',
                  style: TextStyle(
                      fontSize: 34, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'FredokaOne'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 110,
          ),
          Container(
            margin: const EdgeInsets.all(18),
            color: const Color.fromARGB(255, 2, 175, 152),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Your Name', hintStyle: TextStyle(color: Colors.white)),
              controller: emailtextfield,
              onChanged: (value) {
                value = emailtextfield.text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 144),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                setState(() {});
                if (emailtextfield.text == 'hussam') {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                                    return const StartPage();
                                  })));
                                },
                                child: const Text('Continu'))
                          ],
                          title: Text('Welcome ${emailtextfield.text}'),
                        );
                      });
                }
              },
              child: const Text('continu'),
            ),
          )
        ],
      ),
    );
  }
}
