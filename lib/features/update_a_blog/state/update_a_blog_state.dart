import 'package:flutter/material.dart';

@immutable
sealed class UpadateABlogState {
  const UpadateABlogState();
}

class InitialUpdateBlogState extends UpadateABlogState {
  const InitialUpdateBlogState();
}

class UpdatingBlogState extends UpadateABlogState {
  const UpdatingBlogState();
}

class UpdatedBlogState extends UpadateABlogState {
  const UpdatedBlogState();
}

class ErrorUpdatingBlogState extends UpadateABlogState {
  const ErrorUpdatingBlogState({
    required this.error,
  });
  final String error;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ErrorUpdatingBlogState && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'ErrorUpdatingBlogState(error: $error)';
}
