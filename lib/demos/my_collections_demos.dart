// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'https://picsum.photos/200',
          title: 'Abstract Art',
          price: 3),
      CollectionModel(
          imagePath: 'https://picsum.photos/200',
          title: 'Abstract Art2',
          price: 5),
      CollectionModel(
          imagePath: 'https://picsum.photos/200',
          title: 'Abstract Art3',
          price: 7),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Collections'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        //  Burada listview builder kullanılır.
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.red,
                      child: Image.network(
                        _items[index].imagePath,
                        fit: BoxFit.cover,
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_items[index].title),
                        Text(_items[index].price.toString()),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}
