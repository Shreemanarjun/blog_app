import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:velocity_x/velocity_x.dart';

extension ErrorExtensionWidget on Object {
  Widget easyError() => switch (this) {
        (final DioException e)
            when e.response != null && e.response?.data != null =>
          switch (e.response?.data) {
            (final Map<String, dynamic> maperror) => maperror['message']
                .toString()
                .text
                .isIntrinsic
                .semiBold
                .makeCentered(),
            _ => HtmlWidget(e.response!.data.toString())
          },
        _ => Text(toString()),
      };
}
