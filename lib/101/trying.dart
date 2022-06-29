import 'package:flutter/material.dart';

class DenemeApp extends StatefulWidget {
  const DenemeApp({Key? key}) : super(key: key);

  @override
  State<DenemeApp> createState() => _DenemeAppState();
}

class _DenemeAppState extends State<DenemeApp> {
  int sayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ahmet'),
        ),
        body: Center(
            child: Text(
          sayi.toString(),
          style: const TextStyle(fontSize: 40),
        )),
        drawer: Drawer(
            child: Column(
          children: const [Text('data')],
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Hesap',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_business_rounded), label: 'Sepet')
          ],
          backgroundColor: Colors.white38,
          selectedItemColor: Colors.red,
          elevation: 7,
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => setState(() {
                    sayi--;
                  })),
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => setState(() {
                    sayi++;
                  }))
        ]));
    /*  floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() {
                  sayi++;
                }),
            child: const Icon(Icons.add_circle_outline_sharp)),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat */
  }
}
