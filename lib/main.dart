import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/color_learn.dart';

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
      theme: ThemeData.dark().copyWith(
          // errorColor: ColorsItems().porsche,
          // bunu burada tanımlarsak error color kullandığımız her yerde rengini sulıu yapar
          appBarTheme: const AppBarTheme(
              // tüm projede oluşan appbarlara bu özellikler uygulanır
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light)),

      home: ColorLearnView(),
    );
  }
}
