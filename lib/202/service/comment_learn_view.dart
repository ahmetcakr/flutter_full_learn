import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/comment_model.dart';
import 'package:flutter_full_learn/202/service/post_service.dart';

class CommentLearnView extends StatefulWidget {
  const CommentLearnView({Key? key, this.postId}) : super(key: key);
  final int? postId;

  @override
  State<CommentLearnView> createState() => _CommentLearnViewState();
}

class _CommentLearnViewState extends State<CommentLearnView> {
  late final IPostService postService;
  bool _isLoading = false;
  List<CommentModel>? _commentItems;

  @override
  void initState() {
    super.initState();
    postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchItemsWithId(int postId) async {
    _changeLoading();
    _commentItems = await postService.fetchRelatedCommentsWithPostId(postId);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _commentItems?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: Text(_commentItems?[index].email ?? ''),
          );
        },
      ),
    );
  }
}
