import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);
  final String cardTitle = 'Card Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cardTitle),
        leading: const Icon(Icons.add),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: const [
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('data')),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('data')),
            ),
          )
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  // borderını falan burada verebiliyorsun fakat asıl vermen gereken
  // eğer default ise main.dart'ta vermelisin
  //final roundedRectangleBorder =
  //RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
// içeride text gibi şeyler kesinlikle verilmez
// Bu bir card'dır Card oluşturur o kadar.
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      color: Theme.of(context).colorScheme.error,
      // shape: roundedRectangleBorder,
      child: child,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}


// Borders

// StadiumBorder() stadyum şeklinde kenarları oval yapı
// CircleBorder() yuvarlak yapı
// roundedrectangleborder() , borderradius özelliği vardır
