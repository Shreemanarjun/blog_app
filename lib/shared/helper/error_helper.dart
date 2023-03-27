import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:velocity_x/velocity_x.dart';

extension ErrorExtensionWidget on Object {
  Widget easyError() {
    if (this is DioError) {
      final error = this as DioError;
      final data = error.response?.data;
      if (data is Map<String, dynamic>) {
        final maperror = data;
        return maperror['message'].toString().text.semiBold.makeCentered();
      } else {
        return HtmlWidget(data.toString());
      }
    } else {
      return Text(toString());
    }
  }
}
