import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

extension ErrorExtensionWidget on Object {
  Widget easyError() {
    if (this is DioError) {
      final error = this as DioError;
      final errordata =
          error.response?.data.toString() ?? error.error.toString();
      return HtmlWidget(errordata);
    } else {
      return Text(toString());
    }
  }
}
