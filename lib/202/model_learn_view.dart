import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'aa');

  @override
  void initState() {
    super.initState();

    // sample 01
    final user1 = PostModel1()
      ..body = 'body1'
      ..title = 'aa';
    user1.id = 1;

    // sample 02

    final user2 = PostModel2(1, 1, 'title', 'body');
    user2.id = 2;

    // sample 03

    final user3 = PostModel3(1, 1, 'title', 'body');
    // user3.id = 3; // error
    // we cant update id because it is final

    // sample 04

    final user4 = PostModel4(userId: 1, id: 1, title: 'title', body: 'body');
    // user4.body = 'body2'; // error

    final user5 = PostModel5(userId: 1, id: 1, title: 'title', body: 'body');
    // user5. // error
    // you cant see the private fields

    final user6 = PostModel6(userId: 1, id: 1, title: 'title', body: 'body');
    // user6. // error
    // you cant see the private fields

    final user7 = PostModel7();

// for services
    final user8 = PostModel8(body: 'aa');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'bb');
            user9.updateBody('e');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'no body'),
        // bu şekilde kullanılır çünkü null gelme durumunda program crash olmasın diye.
      ),
    );
  }
}
