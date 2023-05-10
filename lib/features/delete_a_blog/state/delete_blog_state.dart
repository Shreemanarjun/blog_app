import 'package:flutter/material.dart';

@immutable
abstract class DeleteBlogState {
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

extension DeleteBlogStateUnion on DeleteBlogState {
  T map<T>({
    required T Function(IntialBlogDeleteState) intialBlogDeleteState,
    required T Function(DeletingBlogState) deletingBlogState,
    required T Function(DeletedBlogState) deletedBlogState,
    required T Function(DeleteBlogError) deleteBlogError,
  }) {
    if (this is IntialBlogDeleteState) {
      return intialBlogDeleteState(this as IntialBlogDeleteState);
    }
    if (this is DeletingBlogState) {
      return deletingBlogState(this as DeletingBlogState);
    }
    if (this is DeletedBlogState) {
      return deletedBlogState(this as DeletedBlogState);
    }
    if (this is DeleteBlogError) {
      return deleteBlogError(this as DeleteBlogError);
    }
    throw AssertionError('Union does not match any possible values');
  }
}
