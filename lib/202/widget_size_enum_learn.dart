import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearnView> createState() =>
      _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Card(
          child: Container(
            height: WidgetSizes.normalCardItem.value(),
            color: Colors.blueGrey,
          ),
        ));
  }
}

enum WidgetSizes {
  normalCardItem,
  circleProfileWidth,
}

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardItem:
        return 30;
        break;
      case WidgetSizes.circleProfileWidth:
        return 25;
        break;
    }
  }
}
