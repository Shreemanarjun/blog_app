// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Users extends Users {
  @override
  final BuiltList<User>? users;

  factory _$Users([void Function(UsersBuilder)? updates]) =>
      (new UsersBuilder()..update(updates))._build();

  _$Users._({this.users}) : super._();

  @override
  Users rebuild(void Function(UsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => new UsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users && users == other.users;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Users')..add('users', users))
        .toString();
  }
}

class UsersBuilder implements Builder<Users, UsersBuilder> {
  _$Users? _$v;

  ListBuilder<User>? _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User>? users) => _$this._users = users;

  UsersBuilder() {
    Users._defaults(this);
  }

  UsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Users build() => _build();

  _$Users _build() {
    _$Users _$result;
    try {
      _$result = _$v ?? new _$Users._(users: _users?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
