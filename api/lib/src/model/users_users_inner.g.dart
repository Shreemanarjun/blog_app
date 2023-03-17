// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_users_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersUsersInner extends UsersUsersInner {
  @override
  final int? id;
  @override
  final String? password;
  @override
  final String? username;

  factory _$UsersUsersInner([void Function(UsersUsersInnerBuilder)? updates]) =>
      (new UsersUsersInnerBuilder()..update(updates))._build();

  _$UsersUsersInner._({this.id, this.password, this.username}) : super._();

  @override
  UsersUsersInner rebuild(void Function(UsersUsersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersUsersInnerBuilder toBuilder() =>
      new UsersUsersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersUsersInner &&
        id == other.id &&
        password == other.password &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersUsersInner')
          ..add('id', id)
          ..add('password', password)
          ..add('username', username))
        .toString();
  }
}

class UsersUsersInnerBuilder
    implements Builder<UsersUsersInner, UsersUsersInnerBuilder> {
  _$UsersUsersInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  UsersUsersInnerBuilder() {
    UsersUsersInner._defaults(this);
  }

  UsersUsersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _password = $v.password;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersUsersInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersUsersInner;
  }

  @override
  void update(void Function(UsersUsersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersUsersInner build() => _build();

  _$UsersUsersInner _build() {
    final _$result = _$v ??
        new _$UsersUsersInner._(id: id, password: password, username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
