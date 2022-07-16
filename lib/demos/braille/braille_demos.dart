import 'package:flutter/material.dart';

import 'braille_demos_page01.dart';
import 'braille_demos_page02.dart';
import 'braille_demos_page03.dart';
import 'braille_demos_page04.dart';

class BrailleDemos extends StatefulWidget {
  const BrailleDemos({Key? key}) : super(key: key);

  @override
  State<BrailleDemos> createState() => _BrailleDemosState();
}

class _BrailleDemosState extends State<BrailleDemos> {
  final _pageController = PageController();
  int _currentIndex = 0;
  // ignore: unused_field
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        children: const [
          BraillePage01(),
          BraillePage02(),
          BraillePage03(),
          BraillePage04(),
        ],
      ),
      bottomNavigationBar: _customNavBar(),
    );
  }

  BottomNavigationBar _customNavBar() {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black.withOpacity(0.1),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.withOpacity(.50),
      onTap: (value) {
        // Resd to item press.
        setState(() {});
      },
      items: [
        _navBarItem01(),
        _navBarItem02(),
        _navBarItem03(),
        _navBarItem04(),
      ],
    );
  }

  BottomNavigationBarItem _navBarItem04() {
    return BottomNavigationBarItem(
        label: 'Kelime',
        icon: IconButton(
          onPressed: () {
            setState(() {
              _pageController.animateToPage(3,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut);
            });
          },
          icon: const Icon(Icons.text_fields_rounded),
        ));
  }

  BottomNavigationBarItem _navBarItem03() {
    return BottomNavigationBarItem(
        label: 'Deneme',
        icon: IconButton(
          onPressed: () {
            setState(() {
              _pageController.animateToPage(2,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut);
            });
          },
          icon: const Icon(Icons.circle_outlined),
        ));
  }

  BottomNavigationBarItem _navBarItem02() {
    return BottomNavigationBarItem(
        label: 'Harf',
        icon: IconButton(
          onPressed: () {
            setState(() {
              _pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut);
            });
          },
          icon: const Icon(Icons.text_format_outlined),
        ));
  }

  BottomNavigationBarItem _navBarItem01() {
    return BottomNavigationBarItem(
        label: 'Alfabe',
        icon: IconButton(
          onPressed: () {
            setState(() {
              _pageController.animateToPage(0,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeInOut);
            });
          },
          icon: const Icon(Icons.abc_outlined),
        ));
  }
}
