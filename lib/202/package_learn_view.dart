import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_mixin.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor:
              Theme.of(context).buttonTheme.colorScheme?.onSecondary,
          onPressed: () {
            launchURL(_url);
          },
        ),
        body: Column(
          children: [
            Text('aaaaa', style: Theme.of(context).textTheme.subtitle1),
            const LoadingBar(),
          ],
        ));
  }
}
