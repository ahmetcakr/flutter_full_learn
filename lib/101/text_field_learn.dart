import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          // mailleri otomatik tamamlanmasına, önerilmesine yarar.
          maxLength: 15,
          buildCounter: (BuildContext context,
              {required int? currentLength,
              required bool? isFocused,
              required int? maxLength}) {
            return _animatedContainer(currentLength);
          },
          decoration: _InputDecorator().emailInput),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10 * currentLength!.toDouble(),
      color: Colors.green[100 * (currentLength ~/ 2)],
    );
  }
}

class _InputDecorator {
  final emailInput = const InputDecoration(
      suffixText: '@gmail.com',
      labelText: LanguageItems.mailInputTitle,
      prefixIcon: Icon(Icons.mail_outline),
      border: OutlineInputBorder(),
      hintText: 'mail');
}
