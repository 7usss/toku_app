import 'package:flutter/material.dart';

import '../Models/Number.dart';
import 'Numbers_Container.dart';

class NumbersContainerList extends StatelessWidget {
  const NumbersContainerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return NumbersContainer(number: numberslist[index]);
      },
      itemCount: numberslist.length,
    );
  }
}
