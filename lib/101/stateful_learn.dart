import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  // Dışarı ile haberleştiğimiz kısım
  // data almak içindir stateless gibi çalışır
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }
    setState(() {});
  }

  // değişiklikler burada, hayat burada gerçekleşir.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _deincrementPadding()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
          child: Text(
        _countValue.toString(),
        style: Theme.of(context).textTheme.headline2,
      )),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementPadding() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: _deincrementButton(),
    );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );
  }
}
