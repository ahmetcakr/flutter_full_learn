import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  ColorLearnView({Key? key}) : super(key: key);
  final ColorsItems colorsItems = ColorsItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          color: Theme.of(context).errorColor, child: const Text('data')),
    );
  }
}

// class dışında aslında kod yazmamız lazım. Aklında bulunsun

class ColorsItems {
  final Color porsche = const Color(0xffEDBF61);
  final Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}
