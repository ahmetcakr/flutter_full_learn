import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_full_learn/202/theme_learn_view.dart';

void main() {
  runApp(const MyApp()); // AliDayı
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Buradaki meterial app, uygulamanın her şeyidir.
      // Uygulama burada çizilir burada çalışır.
      // CupertinoApp de vardır bu daha çok IOS componentlerini kullanır.
      title: 'Flutter Demo',
      // title uygulamamızın ismi diyebiliriz.
      // androidtte uygulamayı arkaplana aldığımızda üstünde çıkan isim
      theme: LighTheme().theme,

      // ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.green,
      //       unselectedLabelColor: Colors.red,
      //       indicatorSize: TabBarIndicatorSize.tab,
      //     ),
      //     bottomAppBarTheme: const BottomAppBarTheme(
      //       shape: CircularNotchedRectangle(),
      //     ),
      //     inputDecorationTheme: const InputDecorationTheme(
      //         iconColor: Colors.red, border: OutlineInputBorder()),
      //     cardTheme: CardTheme(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10))),

      //     // errorColor: ColorsItems().porsche,
      //     // bunu burada tanımlarsak error color kullandığımız her yerde rengini sulıu yapar
      //     appBarTheme: const AppBarTheme(
      //         // tüm projede oluşan appbarlara bu özellikler uygulanır
      //         centerTitle: true,
      //         titleTextStyle: TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black),
      //         backgroundColor: Colors.transparent,
      //         elevation: 0,
      //         systemOverlayStyle: SystemUiOverlayStyle.light)),

      home: const ThemeLearnView(),
    );
  }
}
