import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({Key? key, this.size}) : super(key: key);
  final double? size;
  final _defaultsize = 50.0;

  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(
      color: Colors.blue,
      size: size ?? _defaultsize,
    );
  }
}
