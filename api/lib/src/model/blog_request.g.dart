// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlogRequest extends BlogRequest {
  @override
  final String? description;
  @override
  final String? title;

  factory _$BlogRequest([void Function(BlogRequestBuilder)? updates]) =>
      (new BlogRequestBuilder()..update(updates))._build();

  _$BlogRequest._({this.description, this.title}) : super._();

  @override
  BlogRequest rebuild(void Function(BlogRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogRequestBuilder toBuilder() => new BlogRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogRequest &&
        description == other.description &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlogRequest')
          ..add('description', description)
          ..add('title', title))
        .toString();
  }
}

class BlogRequestBuilder implements Builder<BlogRequest, BlogRequestBuilder> {
  _$BlogRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  BlogRequestBuilder() {
    BlogRequest._defaults(this);
  }

  BlogRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlogRequest;
  }

  @override
  void update(void Function(BlogRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlogRequest build() => _build();

  _$BlogRequest _build() {
    final _$result =
        _$v ?? new _$BlogRequest._(description: description, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
