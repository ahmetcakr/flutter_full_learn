import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          // arka planı olmayan text button
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.red;
            } // Bu kullanım çok önerilmese de böyle bir özelleştirme var.
          })),
          child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
          onPressed: () {},
        ),
        // Eğer onPressed kısmınan null atarsak bu unenable olur.
        const ElevatedButton(onPressed: null, child: Text('Save')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white38, shape: const CircleBorder()),
            onPressed: () {},
            child: const Text('data')),
        InkWell(
          onTap: () {},
          child: const Text('data'),
        )
      ]),
    );
  }
}


// 17.50