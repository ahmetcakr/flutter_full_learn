import 'package:flutter/material.dart';

class TryingDemos02 extends StatefulWidget {
  const TryingDemos02({Key? key}) : super(key: key);

  @override
  State<TryingDemos02> createState() => _TryingDemos02State();
}

class _TryingDemos02State extends State<TryingDemos02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: Column(
            children: const [
              Text('Merhaba'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('UYGULAMA'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.transparent,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _CustomTextButton(buttonText: 'Anasayfa'),
                    _CustomTextButton(buttonText: 'Favoriler'),
                    _CustomTextButton(buttonText: 'Kategoriler'),
                    _CustomTextButton(buttonText: 'Hesabım'),
                    _CustomTextButton(buttonText: 'Hakkımızda'),
                    _CustomTextButton(buttonText: 'İletişim'),
                    _CustomTextButton(buttonText: 'Çıkış'),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  SizedBox _customCard() {
    return const SizedBox(
      height: 100,
      width: 100,
      child: Card(),
    );
  }
}

class _CustomTextButton extends StatelessWidget {
  const _CustomTextButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
