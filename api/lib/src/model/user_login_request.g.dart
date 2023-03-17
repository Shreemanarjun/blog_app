// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLoginRequest extends UserLoginRequest {
  @override
  final String? password;
  @override
  final String? username;

  factory _$UserLoginRequest(
          [void Function(UserLoginRequestBuilder)? updates]) =>
      (new UserLoginRequestBuilder()..update(updates))._build();

  _$UserLoginRequest._({this.password, this.username}) : super._();

  @override
  UserLoginRequest rebuild(void Function(UserLoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoginRequestBuilder toBuilder() =>
      new UserLoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLoginRequest &&
        password == other.password &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLoginRequest')
          ..add('password', password)
          ..add('username', username))
        .toString();
  }
}

class UserLoginRequestBuilder
    implements Builder<UserLoginRequest, UserLoginRequestBuilder> {
  _$UserLoginRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  UserLoginRequestBuilder() {
    UserLoginRequest._defaults(this);
  }

  UserLoginRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLoginRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLoginRequest;
  }

  @override
  void update(void Function(UserLoginRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLoginRequest build() => _build();

  _$UserLoginRequest _build() {
    final _$result =
        _$v ?? new _$UserLoginRequest._(password: password, username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
