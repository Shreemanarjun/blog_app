// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MyToken extends MyToken {
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$MyToken([void Function(MyTokenBuilder)? updates]) =>
      (new MyTokenBuilder()..update(updates))._build();

  _$MyToken._({this.accessToken, this.refreshToken}) : super._();

  @override
  MyToken rebuild(void Function(MyTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyTokenBuilder toBuilder() => new MyTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyToken &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyToken')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class MyTokenBuilder implements Builder<MyToken, MyTokenBuilder> {
  _$MyToken? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  MyTokenBuilder() {
    MyToken._defaults(this);
  }

  MyTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyToken;
  }

  @override
  void update(void Function(MyTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyToken build() => _build();

  _$MyToken _build() {
    final _$result = _$v ??
        new _$MyToken._(accessToken: accessToken, refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
