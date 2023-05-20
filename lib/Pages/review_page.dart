import 'package:flutter/material.dart';
import 'package:test1/Constant/Text1.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 229, 229),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 212, 177),
        title: const Text(
          'Reviews',
          style: TextStyle(fontFamily: 'FredokaOne'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 212, 177),
        onPressed: () {
          setState(() {});
          showModalBottomSheet(
              backgroundColor: const Color.fromARGB(255, 0, 212, 166),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
              context: context,
              builder: (context) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text(
                      'Review Post',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'FredokaOne'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14), color: const Color.fromARGB(0, 228, 207, 207)),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: const [
                          Text1(
                            text: ' Name',
                            fontsized1: 24,
                            color: Colors.white,
                            fontweights: FontWeight.bold,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14), color: const Color.fromARGB(218, 255, 255, 255)),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14), color: const Color.fromARGB(0, 228, 207, 207)),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: const [
                          Text1(
                              text: ' Discription', fontsized1: 24, color: Colors.white, fontweights: FontWeight.bold),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14), color: const Color.fromARGB(218, 255, 255, 255)),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14), color: const Color.fromARGB(0, 228, 207, 207)),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: const [
                          Text1(
                            text: ' Rate',
                            fontsized1: 24,
                            color: Colors.white,
                            fontweights: FontWeight.bold,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14), color: const Color.fromARGB(218, 255, 255, 255)),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.star,
                          ),
                          const Icon(
                            Icons.star,
                          ),
                          const Icon(
                            Icons.star,
                          ),
                          const Icon(
                            Icons.star,
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.arrow_upward),
                              Icon(Icons.arrow_downward),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 16),
                        ))
                  ]),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          ReviewCard(
            user: 'Hussam',
            text2: 'Good App',
            icon1: Icons.star,
            icon3: Icons.star,
            icon4: Icons.star,
            icon: Icons.star,
          ),
          ReviewCard(
            user: 'ali sultan',
            text2: 'missing some featcher',
            icon1: Icons.star,
            icon3: Icons.star,
            icon: Icons.star,
          ),
          ReviewCard(
            user: 'Jasser mansour',
            text2: 'I cant, change my name',
            icon1: Icons.star,
            icon: Icons.star,
          ),
          ReviewCard(
            user: 'raghad',
            text2: 'Nice work',
            icon1: Icons.star,
            icon: Icons.star,
            icon3: Icons.star,
            icon4: Icons.star,
          ),
          ReviewCard(
            user: 'Awatef',
            text2: 'this app helpe me alot ',
            icon1: Icons.star,
            icon: Icons.star,
            icon3: Icons.star,
            icon4: Icons.star,
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  ReviewCard({this.user, this.text2, super.key, this.icon, this.icon1, this.icon3, this.icon4});

  String? user;
  String? text2;
  IconData? icon;
  IconData? icon1;
  IconData? icon3;
  IconData? icon4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                text2!,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.amber,
                  ),
                  Icon(icon1, color: Colors.amber),
                  Icon(icon3, color: Colors.amber),
                  Icon(icon4, color: Colors.amber),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
