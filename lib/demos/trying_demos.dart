import 'package:flutter/material.dart';

class TryingDemos extends StatefulWidget {
  const TryingDemos({Key? key}) : super(key: key);

  @override
  State<TryingDemos> createState() => _TryingDemosState();
}

class _TryingDemosState extends State<TryingDemos> {
  @override
  Widget build(BuildContext context) {
    const anasayfaTitle = 'Anasayfa';
    bool itemColor = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text(anasayfaTitle),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined))
        ],
      ),
      body: PageView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.network('https://picsum.photos/250?image=9'),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        itemColor = !itemColor;
                      });
                    },
                    child: Text(
                      'Tıklayın!',
                      style: TextStyle(fontSize: itemColor ? 15 : 36),
                    ))
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  _CustomCard(),
                  _CustomCard(),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [_CustomCard()],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: _CustomFactionButton(),
                  ),
                  Padding(
                      padding: EdgeInsets.all(50.0),
                      child: _CustomFactionButton())
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _CustomFactionButton extends StatelessWidget {
  const _CustomFactionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: 150,
      child: Card(),
    );
  }
}
