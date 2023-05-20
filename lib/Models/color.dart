class Color_ {
  final String image;
  final String en;
  final String jp;
  final String sound;

  const Color_({required this.image, required this.en, required this.jp, required this.sound});
}

final List<Color_> colorlist = [
  const Color_(image: 'images/colors/color_white.png', en: 'white', jp: 'Shiroi', sound: 'white.wav'),
  const Color_(image: 'images/colors/color_black.png', en: 'Black', jp: 'Burakku', sound: 'black.wav'),
  const Color_(image: 'images/colors/color_brown.png', en: 'Brown', jp: 'Chairo', sound: 'brown.wav'),
  const Color_(image: 'images/colors/yellow.png', en: 'Yellow', jp: 'Ki', sound: 'yellow.wav'),
];
