class Number {
  final String image;
  final String en;
  final String jp;
  final String saound;

  const Number({required this.saound, required this.image, required this.en, required this.jp});
}

final List<Number> numberslist = [
  const Number(
      saound: 'number_one_sound.mp3',
      image:
          'https://images.unsplash.com/photo-1621440318464-72633426377b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bnVtYmVyJTIwb25lfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      en: 'one',
      jp: 'Ichi'),
  const Number(
      saound: 'number_two_sound.mp3',
      image:
          'https://images.unsplash.com/photo-1621440318431-b720cd358375?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bnVtYmVyJTIwdHdvfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      en: 'two',
      jp: 'Ni'),
  const Number(
      saound: 'number_three_sound.mp3',
      image:
          'https://images.unsplash.com/photo-1621440318357-3e3c94221a1c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bnVtYmVyJTIwdGhyZWV8ZW58MHx8MHx8&w=1000&q=80',
      en: 'Three',
      jp: 'San'),
  const Number(
      saound: 'number_four_sound.mp3',
      image:
          'https://images.unsplash.com/photo-1559757737-8ae84dcee639?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTl8ODY0NDAzNHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
      en: 'Four',
      jp: 'Roc'),
];
