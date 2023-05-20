class Family {
  final String image;
  final String en;
  final String jp;
  final String sound;

  const Family({required this.sound, required this.image, required this.en, required this.jp});
}

final List<Family> familylist = [
  const Family(
      image:
          'https://images.unsplash.com/photo-1590527548172-295fdcb1bab0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
      en: 'Father',
      jp: 'Chichioya',
      sound: 'father.wav'),
  const Family(image: 'https://wallpapercave.com/wp/wp5815700.jpg', en: 'Mother', jp: 'Hahaoya', sound: 'mother.wav'),
  const Family(
      image:
          'https://images.unsplash.com/photo-1624272949900-9ae4c56397e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
      en: 'Daughter',
      jp: 'Musume',
      sound: 'daughter.wav'),
];
