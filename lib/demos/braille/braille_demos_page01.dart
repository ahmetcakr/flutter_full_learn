import 'package:flutter/material.dart';

class BraillePage01 extends StatelessWidget {
  const BraillePage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alfabe Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('BRAILLE ALFABESİ', style: TextStyle(fontSize: 30)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('A HARFİ', style: TextStyle(fontSize: 30)),
            ),
            Center(
              child: SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/brailleLetters/A.png'),
              ),
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Önceki'),
                ),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Sonraki')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
