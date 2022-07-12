// bir ekran olacak
// bu ekranda 3 button olacka ve bunlara basınca renk değiştirecek
// Seçili olan button selected icon olacak.

import 'package:flutter/material.dart';

class ColorsDemos extends StatefulWidget {
  const ColorsDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorsDemos> createState() => _ColorsDemosState();
}

class _ColorsDemosState extends State<ColorsDemos> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorsDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    // inspect(oldWidget); print gibi debug durumlarında kullanılabilir

    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red), label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow), label: 'Yellow')
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    }
  }
}

enum _MyColors { red, blue, yellow }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      color: color,
    );
  }
}
