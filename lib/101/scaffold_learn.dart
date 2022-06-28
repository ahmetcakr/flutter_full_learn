import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scoffold Samples')),
      body: const Text('Merhaba'),
      backgroundColor: const Color.fromARGB(90, 200, 9, 9),
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => const SizedBox(
                    height: 200,
                    child: Text("Hello Dude"),
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(
          child: Center(
        child: Text('data'),
      )),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Hello'),
        BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: 'Merhaba')
      ]),
    );
  }
}
