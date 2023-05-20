class Phrase {
  final String en;
  final String jp;
  final String sound;
  Phrase({required this.sound, required this.en, required this.jp});
}

final List<Phrase> phraselist = [
  Phrase(en: 'Are you coming', jp: 'Kimasu ka', sound: 'are_you_coming.wav'),
  Phrase(en: 'Yes i\'m coming', jp: 'Hai, ikimasu', sound: 'yes_im_coming.wav'),
  Phrase(en: 'What is your name', jp: 'Namae wa nandesu ka', sound: 'what_is_your_name.wav'),
  Phrase(en: 'I Love Programming', jp: 'Watashi wa puroguramingu ga daisukidesu', sound: 'i_love_programming.wav'),
];
