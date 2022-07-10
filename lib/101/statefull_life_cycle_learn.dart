import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

// life cycle 4 - Sayfa öldüğünde, sayfadan çıkıldığında çalıştır komutudur.
// genelde bir şeyin içerisini temizlemek için kullanılır.
// sayfadan çıkıldığında temizle gibi.

  @override
  void dispose() {
    super.dispose();
  }

  // lifecycle 3 - widgetler içerisinde bir değişiklik olduğu zaman tetiklenir.
  // initState ile birlikte çok kullanılır.
  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      computeName();
      setState(() {});
    }
  }

  // lifecycle 2, initState den sonra çalışır. Draw dan öncedir.
  // kod devam ederken çağırılabilir. O yüzden çok önerilmez.
  // tüm sayfadaki widgetlara bağlıdır.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  // lifecycle 1 - initState, stateful widgetler çizilmeye başlamadan önce başlayıp
  // aslında çiizlmeden çönce biten lifecycle türüdür.
  @override
  void initState() {
    super.initState();
    _message = widget.message;

    _isOdd = widget.message.length.isOdd;
  }

  void computeName() {
    if (_isOdd) {
      _message += ' Tek';
    } else {
      _message += ' Çift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
