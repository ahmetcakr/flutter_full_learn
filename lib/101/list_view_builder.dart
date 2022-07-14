import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBuilder'),
      ),

      // ListViewBuilder'da listview'ın içeriği oluşturulur.

      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
          // listview'da her bir item'ın arasında bir divider çizilir.
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          // listview'da her bir item'ın içeriği oluşturulur.
          return SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(child: Image.network('https://picsum.photos/200')),
                  Text('$index'),
                ],
              ));
        },
      ),
    );
  }
}
