import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

extension AsyncDisplay<T> on AsyncValue<T> {
  Widget easyWhen({
    required Widget Function(T data) data,
    Widget Function(Object error, StackTrace stackTrace)? errorWidget,
    Widget Function()? loadingWidget,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
    bool isLinear = false,
    VoidCallback? onRetry,
    bool includedefaultDioErrorMessage = false,
  }) =>
      when(
        data: data,
        error: (error, stackTrace) => errorWidget != null
            ? errorWidget(
                error,
                stackTrace,
              )
            : DefaultErrorWidget(
                isLinear: isLinear,
                error: error,
                stackTrace: stackTrace,
                onRetry: onRetry,
                includedefaultDioErrorMessage: includedefaultDioErrorMessage,
              ),
        loading: () => loadingWidget != null
            ? loadingWidget()
            : DefaultLoadingWidget(
                isLinear: isLinear,
              ),
        skipError: skipError,
        skipLoadingOnRefresh: skipLoadingOnRefresh,
        skipLoadingOnReload: skipLoadingOnReload,
      );
}

class DefaultLoadingWidget extends StatelessWidget {
  const DefaultLoadingWidget({
    required this.isLinear,
    super.key,
  });
  final bool isLinear;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLinear
          ? const LinearProgressIndicator()
          : const CircularProgressIndicator.adaptive(),
    );
  }
}

class DefaultErrorWidget extends StatelessWidget {
  const DefaultErrorWidget({
    required this.error,
    required this.stackTrace,
    required this.onRetry,
    required this.isLinear,
    required this.includedefaultDioErrorMessage,
    super.key,
  });
  final Object error;
  final StackTrace stackTrace;
  final VoidCallback? onRetry;
  final bool isLinear;
  final bool includedefaultDioErrorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLinear
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ErrorTextWidget(
                  error: error,
                  includedefaultDioErrorMessage: includedefaultDioErrorMessage,
                ),
                if (onRetry != null)
                  ElevatedButton(
                    onPressed: onRetry,
                    child: const Text('Try again '),
                  ).flexible()
                else
                  const Text('Try Again later.').p8().flexible(),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.close,
                  color: Colors.red,
                ).circle(radius: 32).flexible(),
                'Something went wrong! '
                    .text
                    .bold
                    .lg
                    .red500
                    .make()
                    .p8()
                    .flexible(),
                ErrorTextWidget(
                  error: error,
                  includedefaultDioErrorMessage: includedefaultDioErrorMessage,
                ),
                if (onRetry != null)
                  ElevatedButton(
                    onPressed: onRetry,
                    child: const Text('Try again '),
                  ).flexible()
                else
                  const Text('Try Again later.').p8().flexible(),
              ],
            ),
    );
  }
}

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({
    required this.error,
    required this.includedefaultDioErrorMessage,
    super.key,
  });
  final Object error;
  final bool includedefaultDioErrorMessage;

  @override
  Widget build(BuildContext context) => switch (error) {
        (final DioException e) when includedefaultDioErrorMessage =>
          DefaultDioErrorWidget(
            dioError: e,
          ),
        _ => error.toString().text.bold.sm.make().p4().flexible(),
      };
}

class DefaultDioErrorWidget extends StatelessWidget {
  const DefaultDioErrorWidget({
    required this.dioError,
    super.key,
  });
  final DioException dioError;

  @override
  Widget build(BuildContext context) {
    return switch (dioError.type) {
      DioExceptionType.connectionTimeout =>
        'Connection Timeout Error'.text.bold.sm.make().p4().flexible(),
      DioExceptionType.sendTimeout =>
        'Unable to connect to the server.Please try again later.'
            .text
            .bold
            .sm
            .make()
            .p8()
            .flexible(),
      DioExceptionType.receiveTimeout =>
        'Check you internet connection reliability.'
            .text
            .bold
            .sm
            .make()
            .p8()
            .flexible(),
      DioExceptionType.badCertificate =>
        'Please update your OS or add certificate.'
            .text
            .bold
            .sm
            .make()
            .p8()
            .flexible(),
      DioExceptionType.badResponse =>
        'Something went wrong.Please try again later.'
            .text
            .bold
            .sm
            .make()
            .p8()
            .flexible(),
      DioExceptionType.cancel =>
        'Request Cancelled'.text.bold.sm.make().p4().flexible(),
      DioExceptionType.connectionError =>
        'Unable to connect to server.Please try again later.'
            .text
            .bold
            .sm
            .make()
            .p8()
            .flexible(),
      DioExceptionType.unknown => 'Please check your internet connection.'
          .text
          .bold
          .sm
          .make()
          .p8()
          .flexible()
    };
  }
}
