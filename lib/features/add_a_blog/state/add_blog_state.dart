import 'package:flutter/material.dart';

@immutable
sealed class AddBlogState {
  const AddBlogState();
}

class InitialBlogState extends AddBlogState {
  const InitialBlogState();
}

class AddingBlogState extends AddBlogState {
  const AddingBlogState();
}

class AddedBlogState extends AddBlogState {
  const AddedBlogState();
}

class AddBlogErrorState extends AddBlogState {
  const AddBlogErrorState({
    required this.error,
  });
  final String error;

  @override
  String toString() => 'AddBlogErrorState(error: $error)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddBlogErrorState && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;
}
