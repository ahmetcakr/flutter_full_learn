import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingHorizontal,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
              child: Padding(
                padding: ProjectPadding.pagePaddingVertical +
                    ProjectPadding.pagePaddingHorizontal,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingVertical,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40) +
                  const EdgeInsets.symmetric(vertical: 10),
              // bu bir override kullanımdır toplanımı gösterir.
              child: const Text('Ali'),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 10);
}


// Bir projede padding değerleri sabit olmalıdır.
// Sürekli onlarla oynamak hem gereksizdir. Hem de görüntüyü bozar.
// Uyum için sabit padding