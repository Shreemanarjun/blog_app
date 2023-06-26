// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Blog extends Blog {
  @override
  final String? createdAt;
  @override
  final String? description;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? updatedAt;
  @override
  final int? userID;

  factory _$Blog([void Function(BlogBuilder)? updates]) =>
      (new BlogBuilder()..update(updates))._build();

  _$Blog._(
      {this.createdAt,
      this.description,
      this.id,
      this.title,
      this.updatedAt,
      this.userID})
      : super._();

  @override
  Blog rebuild(void Function(BlogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogBuilder toBuilder() => new BlogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Blog &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        title == other.title &&
        updatedAt == other.updatedAt &&
        userID == other.userID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, userID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Blog')
          ..add('createdAt', createdAt)
          ..add('description', description)
          ..add('id', id)
          ..add('title', title)
          ..add('updatedAt', updatedAt)
          ..add('userID', userID))
        .toString();
  }
}

class BlogBuilder implements Builder<Blog, BlogBuilder> {
  _$Blog? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  int? _userID;
  int? get userID => _$this._userID;
  set userID(int? userID) => _$this._userID = userID;

  BlogBuilder() {
    Blog._defaults(this);
  }

  BlogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _description = $v.description;
      _id = $v.id;
      _title = $v.title;
      _updatedAt = $v.updatedAt;
      _userID = $v.userID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Blog other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Blog;
  }

  @override
  void update(void Function(BlogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Blog build() => _build();

  _$Blog _build() {
    final _$result = _$v ??
        new _$Blog._(
            createdAt: createdAt,
            description: description,
            id: id,
            title: title,
            updatedAt: updatedAt,
            userID: userID);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
