import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  // Dışarı ile haberleştiğimiz kısım
  // data almak içindir stateless gibi çalışır
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  // değişiklikler burada, hayat burada gerçekleşir.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
