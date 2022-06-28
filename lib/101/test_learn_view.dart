import 'package:flutter/material.dart';

// öncelikle bir class oluştururuz ve onu StatelessWidget'tan extends ederiz.
class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Ahmet';

  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  // extends ettiğimizde br override gelir ve return ettiğimizde kendi kodlarımıız yazmaya başlayabiliriz.
  @override
  Widget build(BuildContext context) {
    // Scaffold içerisinde bir ekrana dair her şeyi barındırır.
    return Scaffold(
      // Sayfanın ortasında oluşturmak istiyorsak Center() açmalıyız
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(('WELCOME $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: ProjectStyle.welcomeStyle),
          Text(('Hello $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              // style'a genelde theme üzerinden style vermek daha doğru olur.
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor)),

          Text(userName ?? ''),

          // eğer gelmediyse '' bu şekilde ata demek
          // bu şekilde kullanılmak zorundadır !!!!
          Text(keys.welcome),
          // Bu şekilde yazmak projeye professional olma yolunda çok şey katacaktır
          // çünkü yönetilmesi kolay olacaktır.
        ],
      )),
    );
  }
}

// yukarıdaki style kısmını sürekli yazmamak için onu class'a çevirdik

class ProjectStyle {
  static TextStyle welcomeStyle = const TextStyle(
      color: Colors.yellow,
      backgroundColor: Colors.white10,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  // static Color get welcomeColor => Colors.red;
  static Color welcomeColor = Colors.red; // Bu şekilde hot reload olmaz
  // fakat projenin hatayı için son değeri alması daha iyi
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
