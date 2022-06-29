import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/trying.dart';

void main() {
  runApp(const MyApp()); // AliDayı
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Buradaki meterial app, uygulamanın her şeyidir.
      // Uygulama burada çizilir burada çalışır.
      // CupertinoApp de vardır bu daha çok IOS componentlerini kullanır.
      title: 'Flutter Demo',
      // title uygulamamızın ismi diyebiliriz.
      // androidtte uygulamayı arkaplana aldığımızda üstünde çıkan isim
      theme:
          ThemeData(primarySwatch: colorCustom, bottomAppBarColor: colorCustom),
      home: const DenemeApp(),
    );
  }
}

const MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);

const Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
