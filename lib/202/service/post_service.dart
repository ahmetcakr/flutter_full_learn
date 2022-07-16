import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learn/202/service/comment_model.dart';

import 'post_model.dart';

abstract class IPostService {
  Future<bool> addItemToServis(PostModel postModel);
  Future<bool> putItemToServis(PostModel postModel, int id);
  Future<bool> deleteItemFromServis(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToServis(PostModel postModel) async {
    try {
      final response =
          await _dio.post(_PostServicePath.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<bool> putItemToServis(PostModel postModel, int id) async {
    try {
      final response =
          await _dio.put('${_PostServicePath.posts.name}/$id', data: postModel);

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemFromServis(int id) async {
    try {
      final response = await _dio.put('${_PostServicePath.posts.name}/$id');

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePath.posts.name);
      // wait for the response to be received

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;

    //  return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await Dio().get(_PostServicePath.comments.name,
          queryParameters: {_PostQueryPath.postId.name: postId});
      // wait for the response to be received

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;
  }
}

enum _PostServicePath {
  posts,
  comments,
}

enum _PostQueryPath {
  postId,
}

class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
    }
  }
}
