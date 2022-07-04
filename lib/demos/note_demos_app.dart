import 'package:flutter/material.dart';

import '../101/image_learn.dart';

class NoteDemosApp extends StatelessWidget {
  const NoteDemosApp({Key? key}) : super(key: key);
  final _title = 'Create Your First Note';
  final _description =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';
  final _createButtonText = 'Create A Note';
  final _importButtonText = 'Import Notes';
  final _mainTitle = 'Note Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black54,
        ),
        title: Text(
          _mainTitle,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.black54),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            color: Colors.black54,
          )
        ],
      ),
      body: Padding(
        padding: ProjectPaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appWithBookWithoutPath),
            TitleWidget(title: _title),
            Padding(
              padding: ProjectPaddingItems.verticalPadding,
              child: _SubtitleWidget(
                //textAlign: TextAlign.start,
                subtitleText: _description,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(primary: Colors.blueGrey.shade400),
                child: SizedBox(
                    height: ButtonHeight.buttonCustomHeight,
                    child: Center(
                        child: Text(
                      _createButtonText,
                      style: Theme.of(context).textTheme.headline5,
                    )))),
            TextButton(
              onPressed: () {},
              child: Text(_importButtonText),
            )
          ],
        ),
      ),
    );
  }
}

// Center Text Align
class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({
    Key? key,
    // ignore: unused_element
    this.textAlign = TextAlign.center,
    required this.subtitleText,
  }) : super(key: key);
  final TextAlign textAlign;
  final String subtitleText;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitleText,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black54, fontWeight: FontWeight.w700),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class ProjectPaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonCustomHeight = 50;
}
