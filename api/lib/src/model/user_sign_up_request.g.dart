// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSignUpRequest extends UserSignUpRequest {
  @override
  final String? password;
  @override
  final String? username;

  factory _$UserSignUpRequest(
          [void Function(UserSignUpRequestBuilder)? updates]) =>
      (new UserSignUpRequestBuilder()..update(updates))._build();

  _$UserSignUpRequest._({this.password, this.username}) : super._();

  @override
  UserSignUpRequest rebuild(void Function(UserSignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSignUpRequestBuilder toBuilder() =>
      new UserSignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSignUpRequest &&
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
    return (newBuiltValueToStringHelper(r'UserSignUpRequest')
          ..add('password', password)
          ..add('username', username))
        .toString();
  }
}

class UserSignUpRequestBuilder
    implements Builder<UserSignUpRequest, UserSignUpRequestBuilder> {
  _$UserSignUpRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  UserSignUpRequestBuilder() {
    UserSignUpRequest._defaults(this);
  }

  UserSignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSignUpRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSignUpRequest;
  }

  @override
  void update(void Function(UserSignUpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSignUpRequest build() => _build();

  _$UserSignUpRequest _build() {
    final _$result = _$v ??
        new _$UserSignUpRequest._(password: password, username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
