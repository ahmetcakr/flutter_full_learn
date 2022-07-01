import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String titleImage = 'IMAGE LEARN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleImage),
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: PngImage(name: ImageItems().appWithBookWithoutPath),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String appWithBook = "books-apple-png-Images-Free-Transparent.png";
  final String appWithBookWithoutPath =
      "books-apple-png-Images-Free-Transparent";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
      height: 100,
    );
  }

  String get _nameWithPath => "assets/$name.png";
}
