import 'package:flutter/material.dart';

@immutable
abstract class UpadateABlogState {
  const UpadateABlogState();
}

class InitialUpdateBlogState extends UpadateABlogState {
  const InitialUpdateBlogState() : super();
}

class UpdatingBlogState extends UpadateABlogState {
  const UpdatingBlogState() : super();
}

class UpdatedBlogState extends UpadateABlogState {
  const UpdatedBlogState() : super();
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

extension UpadateABlogStateUnion on UpadateABlogState {
  T map<T>({
    required T Function(InitialUpdateBlogState) initialUpdateBlogState,
    required T Function(UpdatingBlogState) updatingBlogState,
    required T Function(UpdatedBlogState) updatedBlogState,
    required T Function(ErrorUpdatingBlogState) errorUpdatingBlogState,
  }) {
    if (this is InitialUpdateBlogState) {
      return initialUpdateBlogState(this as InitialUpdateBlogState);
    }
    if (this is UpdatingBlogState) {
      return updatingBlogState(this as UpdatingBlogState);
    }
    if (this is UpdatedBlogState) {
      return updatedBlogState(this as UpdatedBlogState);
    }
    if (this is ErrorUpdatingBlogState) {
      return errorUpdatingBlogState(this as ErrorUpdatingBlogState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}
