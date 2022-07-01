import 'package:flutter/material.dart';

class Trying02 extends StatelessWidget {
  const Trying02({Key? key}) : super(key: key);
  final String _title = 'Urunler';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          title: Text(_title),
          actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
          ]),
      body: Center(
        child: Text(_title),
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => SizedBox(
                    height: 200,
                    child: Text(_title),
                  ));
        },
      ),
    );
  }
}
