import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  late final Dio _dio;
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';
  bool _isLoading = false;
  String? name;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToServis(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);

    if (response.statusCode == HttpStatus.created) {
      name = 'Basarili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? 'ekle'),
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Body'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'UserId'),
            textInputAction: TextInputAction.send,
          ),
          TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty &&
                          _userIdController.text.isNotEmpty) {
                        final model = PostModel(
                          title: _titleController.text,
                          body: _bodyController.text,
                          userId: int.tryParse(_userIdController.text),
                        );

                        _addItemToServis(model);
                      }
                    },
              child: const Text('Send'))
        ],
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
