// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_tokens_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokensTokensInner extends TokensTokensInner {
  @override
  final String? accessToken;
  @override
  final int? id;
  @override
  final String? refreshToken;

  factory _$TokensTokensInner(
          [void Function(TokensTokensInnerBuilder)? updates]) =>
      (new TokensTokensInnerBuilder()..update(updates))._build();

  _$TokensTokensInner._({this.accessToken, this.id, this.refreshToken})
      : super._();

  @override
  TokensTokensInner rebuild(void Function(TokensTokensInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokensTokensInnerBuilder toBuilder() =>
      new TokensTokensInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokensTokensInner &&
        accessToken == other.accessToken &&
        id == other.id &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokensTokensInner')
          ..add('accessToken', accessToken)
          ..add('id', id)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class TokensTokensInnerBuilder
    implements Builder<TokensTokensInner, TokensTokensInnerBuilder> {
  _$TokensTokensInner? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  TokensTokensInnerBuilder() {
    TokensTokensInner._defaults(this);
  }

  TokensTokensInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _id = $v.id;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokensTokensInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokensTokensInner;
  }

  @override
  void update(void Function(TokensTokensInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokensTokensInner build() => _build();

  _$TokensTokensInner _build() {
    final _$result = _$v ??
        new _$TokensTokensInner._(
            accessToken: accessToken, id: id, refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
