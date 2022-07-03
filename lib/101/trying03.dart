import 'package:flutter/material.dart';

class Trying03 extends StatelessWidget {
  const Trying03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://picsum.photos/250?image=9',
              fit: BoxFit.contain,
              height: 60,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error_outline_outlined),
            ),
            Container()
          ],
        ),
      ),
      body: const Center(),
    );
  }
}
