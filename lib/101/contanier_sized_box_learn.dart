import 'package:flutter/material.dart';

class ContanierSizedBoxLearn extends StatelessWidget {
  const ContanierSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(), // boş kare alan oluşturmak için
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50), // 50 ye 50lik bir kare oluşturur
          ),
          Container(
            height: 80,
            width: 80,
            // color: Colors.red, eğer decoration kullanacaksak color'ı burada veremeyiz
            constraints: const BoxConstraints(maxWidth: 100, minWidth: 35),
            padding: const EdgeInsets.all(10), // container içi boşluk
            margin: const EdgeInsets.all(10), // container dışı boşluk
            decoration: Projectutility.boxDecoration,
            child: Text('aa' * 1),
          )
        ],
      ),
    );
  }
}

class Projectutility {
  static BoxDecoration boxDecoration = BoxDecoration(
      //color: Colors.amberAccent,
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      shape: BoxShape.rectangle,
      boxShadow: const [
        BoxShadow(color: Colors.white, offset: Offset(1, 1), blurRadius: 1)
      ],
      borderRadius: BorderRadius.circular(
          10), // her yerden vermek istiyorsak circular, tek yerden vermek gerekirse only
      border: Border.all(width: 5, color: Colors.black));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            //color: Colors.amberAccent,
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            shape: BoxShape.rectangle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.white, offset: Offset(1, 1), blurRadius: 1)
            ],
            borderRadius: BorderRadius.circular(
                10), // her yerden vermek istiyorsak circular, tek yerden vermek gerekirse only
            border: Border.all(width: 5, color: Colors.black));
}
