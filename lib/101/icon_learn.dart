import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final String _iconTitle = 'Hello Icon Learn';
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_iconTitle),
      ),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.access_alarm_outlined),
          color: Theme.of(context).colorScheme.error,
          // rengi temadan almak her zaman daha mantıklıdır.
          /// eğer color olarak atarsak temamız ne olursa olsun o renkte kalır ve bazen uygun olmayabilir
          // color: Colors.red, // bu şekil kullanım yanlıştır
          iconSize: 60, // bu kullanım yanlıştır
        ),
        const SizedBox(height: 10),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.access_alarm_outlined),
          color: iconColors.forely, // böyle kullanılmalı
          iconSize: iconSize.iconSmall, // bu şekilde kullanılmalı
          // iconSize: IconSizes.iconMedium // staticler direkt bu şekilde kullanılabilir.
        )
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconMedium =
      60; // bu kullanım hafızada yer kaplaro yüzden çok tercih etmemek lazım
}

class IconColors {
  final Color forely = const Color(0xffED617A);
}
