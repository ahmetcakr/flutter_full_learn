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
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    const String pageTitle = 'My Collections';
    return Scaffold(
      appBar: AppBar(
        title: const Text(pageTitle),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        //  Burada listview builder kullanılır.
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingAll,
        child: Column(
          children: [
            Image.network(
              _model.imagePath,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text(_model.price.toString()),
                ],
              ),
            )
          ],
        ),
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

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImages.imageCollections,
          title: 'Abstract Art',
          price: 3),
      CollectionModel(
          imagePath: ProjectImages.imageCollections,
          title: 'Abstract Art2',
          price: 5),
      CollectionModel(
          imagePath: ProjectImages.imageCollections,
          title: 'Abstract Art3',
          price: 7),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingAll = const EdgeInsets.all(20.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollections = 'https://picsum.photos/500/300';
}
