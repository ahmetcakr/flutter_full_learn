// stateless herhangi bir daha işlemi yapmıcam
// sadece show yapıcam gösteri, gözüken şeyler, items

import 'package:flutter/material.dart';

class StatelesLearn extends StatelessWidget {
  const StatelesLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Ahmet';
    const String surname = 'Cakir';

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(
            text: name,
          ),
          _emptyBox(),
          const TitleTextWidget(
            text: surname,
          ),
          _emptyBox(),
          const _CustomContainer()
          // eğer burada 10 tane text varsa
          // Flutter der ki sana gel bunu widget yap

          // eğer küçük bir şeyse widget yerine method da oluşturulabilir
          // orneğin boş sizedbox
          ,
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 5);
}

// içerideki Container'ın üzerinden Extract Widget deyip otomatik oluşturulur.
// Aslında bu kullanım yerine part, part of'lar kullanırız ama şimdi böle

// Widget'i file private yapmak istiyorsak yani sadece bu dosyada kullanılsın istiyorsak _ ile tanımlarız.

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.greenAccent),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String
      text; // final kullanmak zorundayız çünkü bir widget içerisinde kullanıyorsak bunun dışarıdan erişilemez olması lazım.
  // final string? text; olabilirdi ama bu sefer yukarıdaki required'i kaldırmamız gerekir
  // ve artık isteğe bağlı parametre olur.

  // Verilmediğinde bir değer döndür demek istersek {this.text='sdsd'} yazarız ve asla ? kullanılmaz hata verir

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // buradaki texti değişken yapmamız lazım
      // asla bu şekilde Verme
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
