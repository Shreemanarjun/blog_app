import 'package:flutter/material.dart';

@immutable
sealed class DeleteBlogState {
  const DeleteBlogState();
}

class IntialBlogDeleteState extends DeleteBlogState {
  const IntialBlogDeleteState() : super();
}

class DeletingBlogState extends DeleteBlogState {
  const DeletingBlogState() : super();
}

class DeletedBlogState extends DeleteBlogState {
  const DeletedBlogState() : super();
}

class DeleteBlogError extends DeleteBlogState {
  const DeleteBlogError({required this.error}) : super();
  final String error;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DeleteBlogError && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'DeleteBlogError(error: $error)';
}
