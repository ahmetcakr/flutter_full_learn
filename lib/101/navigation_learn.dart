import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                  context,
                  NavigateDetail(
                    isOK: selectedItems.contains(index),
                  ));

              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {},
          child: const Icon(Icons.arrow_forward_outlined)),
    );
  }
}

mixin NavigatorManager {
  // constructorsız class denebilir

  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        // Burada fullscreenDialog true yaparsak uygulama aşağıdan yukarıya doğru açılır.
        // ve sol üstteki geri butonu görünmez. Yerine çıkış butonu görünür.

        settings: const RouteSettings(),
        // RouteSettings ile uygulamamızın çalışma şekli belirlenir.
        // bir şeyi dynamic olarak gönderebiliriz.
        // mesela gidip geldiğinde sayfadaki bir şeyin rengi yeşil olsun gibi kullanılır
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        //  fullscreenDialog: true,
        // Burada fullscreenDialog true yaparsak uygulama aşağıdan yukarıya doğru açılır.
        // ve sol üstteki geri butonu görünmez. Yerine çıkış butonu görünür.

        settings: const RouteSettings(),
        // RouteSettings ile uygulamamızın çalışma şekli belirlenir.
        // bir şeyi dynamic olarak gönderebiliriz.
        // mesela gidip geldiğinde sayfadaki bir şeyin rengi yeşil olsun gibi kullanılır
      ),
    );
  }
}
