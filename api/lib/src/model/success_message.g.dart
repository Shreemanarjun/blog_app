// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SuccessMessage extends SuccessMessage {
  @override
  final String? message;

  factory _$SuccessMessage([void Function(SuccessMessageBuilder)? updates]) =>
      (new SuccessMessageBuilder()..update(updates))._build();

  _$SuccessMessage._({this.message}) : super._();

  @override
  SuccessMessage rebuild(void Function(SuccessMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessMessageBuilder toBuilder() =>
      new SuccessMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessMessage && message == other.message;
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
    return (newBuiltValueToStringHelper(r'SuccessMessage')
          ..add('message', message))
        .toString();
  }
}

class SuccessMessageBuilder
    implements Builder<SuccessMessage, SuccessMessageBuilder> {
  _$SuccessMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SuccessMessageBuilder() {
    SuccessMessage._defaults(this);
  }

  SuccessMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessMessage;
  }

  @override
  void update(void Function(SuccessMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessMessage build() => _build();

  _$SuccessMessage _build() {
    final _$result = _$v ?? new _$SuccessMessage._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
