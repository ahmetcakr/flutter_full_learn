import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/contanier_sized_box_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.bounceOut);
            },
            child: const Icon(Icons.chevron_left_sharp),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.bounceOut);
            },
            child: const Icon(Icons.chevron_right_sharp),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        padEnds: false,
        // diğer sayfadan bir kısmı kendi sayfanda görmek için kullanılır
        //controller: PageController(viewportFraction: 0.7),
        children: [
          IconLearnView(),
          const ContanierSizedBoxLearn(),
          const ImageLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
