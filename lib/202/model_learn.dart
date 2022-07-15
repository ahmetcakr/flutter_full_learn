// ignore_for_file: public_member_api_docs, sort_constructors_first
// flutter has null safety
// null safety is a feature of Dart that allows you to write code that is safer.
// It means that you can’t accidentally pass a null value to a method that requires a non-null value.

// that's why you must initialize your variables.
// There is a few ways to initialize variables.
// They are:

class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  // they may be null
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  // they can't be null like this

  PostModel2(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
  // they can initialize when constructor is called
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
  // named arguments
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
  // named arguments
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

// late means that the variable is not initialized when the constructor is called.

  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
  // named arguments
}

class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

// late means that the variable is not initialized when the constructor is called.

  PostModel7({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',

    // if they are null, they will be initialized with default values
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
  // named arguments
}

// if you will use web api, you can use the following code:
// because the web api is not null safe, you must check the nullability of the variables.

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel8({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      // if data is not null and not empty
      body = data;
    }
  }

  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
