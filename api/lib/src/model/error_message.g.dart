// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorMessage extends ErrorMessage {
  @override
  final String? message;

  factory _$ErrorMessage([void Function(ErrorMessageBuilder)? updates]) =>
      (new ErrorMessageBuilder()..update(updates))._build();

  _$ErrorMessage._({this.message}) : super._();

  @override
  ErrorMessage rebuild(void Function(ErrorMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorMessageBuilder toBuilder() => new ErrorMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorMessage && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorMessage')
          ..add('message', message))
        .toString();
  }
}

class ErrorMessageBuilder
    implements Builder<ErrorMessage, ErrorMessageBuilder> {
  _$ErrorMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ErrorMessageBuilder() {
    ErrorMessage._defaults(this);
  }

  ErrorMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorMessage;
  }

  @override
  void update(void Function(ErrorMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorMessage build() => _build();

  _$ErrorMessage _build() {
    final _$result = _$v ?? new _$ErrorMessage._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
