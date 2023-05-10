import 'package:flutter/material.dart';

@immutable
sealed class AddBlogState {}

class InitialBlogState extends AddBlogState {
  InitialBlogState();
}

class AddingBlogState extends AddBlogState {
  AddingBlogState();
}

class AddedBlogState extends AddBlogState {
  AddedBlogState();
}

class AddBlogErrorState extends AddBlogState {
  AddBlogErrorState({
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
