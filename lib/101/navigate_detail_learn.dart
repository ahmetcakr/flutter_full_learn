import 'package:flutter/material.dart';

class NavigateDetail extends StatefulWidget {
  const NavigateDetail({Key? key, this.isOK = false}) : super(key: key);

  final bool isOK;

  @override
  State<NavigateDetail> createState() => _NavigateDetailState();
}

class _NavigateDetailState extends State<NavigateDetail> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
    // giden argument bu şekilde okunabilir.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigate Detail'),
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOK);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOK ? Colors.red : Colors.green,
            ),
            label: widget.isOK ? const Text('Reddet') : const Text('Onayla')),
      ),
    );
  }
}
