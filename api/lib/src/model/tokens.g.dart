// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tokens extends Tokens {
  @override
  final BuiltList<Token>? tokens;

  factory _$Tokens([void Function(TokensBuilder)? updates]) =>
      (new TokensBuilder()..update(updates))._build();

  _$Tokens._({this.tokens}) : super._();

  @override
  Tokens rebuild(void Function(TokensBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokensBuilder toBuilder() => new TokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tokens && tokens == other.tokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tokens')..add('tokens', tokens))
        .toString();
  }
}

class TokensBuilder implements Builder<Tokens, TokensBuilder> {
  _$Tokens? _$v;

  ListBuilder<Token>? _tokens;
  ListBuilder<Token> get tokens => _$this._tokens ??= new ListBuilder<Token>();
  set tokens(ListBuilder<Token>? tokens) => _$this._tokens = tokens;

  TokensBuilder() {
    Tokens._defaults(this);
  }

  TokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokens = $v.tokens?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tokens other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tokens;
  }

  @override
  void update(void Function(TokensBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tokens build() => _build();

  _$Tokens _build() {
    _$Tokens _$result;
    try {
      _$result = _$v ?? new _$Tokens._(tokens: _tokens?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokens';
        _tokens?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Tokens', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
