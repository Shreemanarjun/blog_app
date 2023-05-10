import 'package:flutter/material.dart';

@immutable
abstract class AddBlogState {
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

extension AddBlogStateUnion on AddBlogState {
  T map<T>({
    required T Function(InitialBlogState) initialBlogState,
    required T Function(AddingBlogState) addingBlogState,
    required T Function(AddedBlogState) addedBlogState,
    required T Function(AddBlogErrorState) addBlogErrorState,
  }) {
    if (this is InitialBlogState) {
      return initialBlogState(this as InitialBlogState);
    }
    if (this is AddingBlogState) {
      return addingBlogState(this as AddingBlogState);
    }
    if (this is AddedBlogState) {
      return addedBlogState(this as AddedBlogState);
    }
    if (this is AddBlogErrorState) {
      return addBlogErrorState(this as AddBlogErrorState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}
