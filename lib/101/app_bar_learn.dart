import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        // centerTitle: true, main.dart'ta atadık
        //backgroundColor: Colors.transparent, main.dart'ta atadık
        // elevation: 0, // app barın arka planını yok eder. main.dart'ta atadık
        //systemOverlayStyle: SystemUiOverlayStyle.light, // main.dart'ta atadık
        // Uygulamanın üstünde görünen saat, şarj gibi yerlerin renklerini belirler
        leading: const Icon(Icons.chevron_left),
        //leadingWidth: 50,  soldaki butonun tam yerini ayarlarız bununla
        // actionsIconTheme: const IconThemeData(color: Colors.red), action olarak belirlediğimiz butonlara özellik atar
        automaticallyImplyLeading:
            false, // sayfada otomatik olarak back butonu gelmesin kodu
        // navigation pagelerde kullanır
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined)),
          const Center(
              //child: CircularProgressIndicator(),  // sürekli dönen loading animasyonu
              )
        ],
      ),
    );
  }
}
