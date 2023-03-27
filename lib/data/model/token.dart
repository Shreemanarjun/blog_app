// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class APIToken {
  const APIToken({
    required this.accessToken,
    required this.refreshToken,
  });
  factory APIToken.fromJson(String source) =>
      APIToken.fromMap(json.decode(source) as Map<String, dynamic>);

  factory APIToken.fromMap(Map<String, dynamic> map) {
    return APIToken(
      accessToken: map['accessToken'] as String? ?? '',
      refreshToken: map['refreshToken'] as String? ?? '',
    );
  }
  final String accessToken;
  final String refreshToken;

  APIToken copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return APIToken(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'APIToken(accessToken: $accessToken, refreshToken: $refreshToken)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is APIToken &&
        other.accessToken == accessToken &&
        other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => accessToken.hashCode ^ refreshToken.hashCode;
}
