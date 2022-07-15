import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/braille/braille_demos_page01.dart';

import '../demos/braille/braille_demos_page02.dart';
import '../demos/braille/braille_demos_page03.dart';
import '../demos/braille/braille_demos_page04.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          // extendBody floating butonun arkaplanını yok eder.
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
            child: const Icon(Icons.question_mark_sharp),
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            // notchMargin notch ekranının yukarısındaki boşluk

            // notch ekranının çerçevesi
            child: _MyTabBar(tabController: _tabController),
          ),
          body: _TabBarView(tabController: _tabController),
        ));
  }
}

class _MyTabBar extends StatelessWidget {
  const _MyTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        padding: EdgeInsets.zero,
        splashBorderRadius: BorderRadius.circular(10),
        indicatorColor: Colors.white,
        controller: _tabController,
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: e.name.toUpperCase(),
                  icon: e.name == _MyTabViews.home.name
                      ? const Icon(_MyIcons.home)
                      : (e.name == _MyTabViews.settings.name
                          ? const Icon(_MyIcons.settings)
                          : (e.name == _MyTabViews.favorite.name
                              ? const Icon(_MyIcons.favorite)
                              : (e.name == _MyTabViews.profile.name
                                  ? const Icon(_MyIcons.profile)
                                  : const Icon(Icons.error)))),
                ))
            .toList());
  }
}

class _TabBarView extends StatelessWidget {
  const _TabBarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        // physics: const NeverScrollableScrollPhysics(),
        // NeverScrollableScrollPhysics: scroll işlemi yapılmaz.
        controller: _tabController,
        children: const [
          BraillePage01(),
          BraillePage02(),
          BraillePage03(),
          BraillePage04(),
        ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}

class _MyIcons {
  static const IconData home = Icons.home;
  static const IconData settings = Icons.settings;
  static const IconData favorite = Icons.favorite;
  static const IconData profile = Icons.person;
}
