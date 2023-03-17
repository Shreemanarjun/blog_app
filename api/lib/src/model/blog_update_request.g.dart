// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlogUpdateRequest extends BlogUpdateRequest {
  @override
  final int? blogId;
  @override
  final String? description;
  @override
  final String? title;

  factory _$BlogUpdateRequest(
          [void Function(BlogUpdateRequestBuilder)? updates]) =>
      (new BlogUpdateRequestBuilder()..update(updates))._build();

  _$BlogUpdateRequest._({this.blogId, this.description, this.title})
      : super._();

  @override
  BlogUpdateRequest rebuild(void Function(BlogUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogUpdateRequestBuilder toBuilder() =>
      new BlogUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogUpdateRequest &&
        blogId == other.blogId &&
        description == other.description &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blogId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlogUpdateRequest')
          ..add('blogId', blogId)
          ..add('description', description)
          ..add('title', title))
        .toString();
  }
}

class BlogUpdateRequestBuilder
    implements Builder<BlogUpdateRequest, BlogUpdateRequestBuilder> {
  _$BlogUpdateRequest? _$v;

  int? _blogId;
  int? get blogId => _$this._blogId;
  set blogId(int? blogId) => _$this._blogId = blogId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  BlogUpdateRequestBuilder() {
    BlogUpdateRequest._defaults(this);
  }

  BlogUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blogId = $v.blogId;
      _description = $v.description;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogUpdateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlogUpdateRequest;
  }

  @override
  void update(void Function(BlogUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlogUpdateRequest build() => _build();

  _$BlogUpdateRequest _build() {
    final _$result = _$v ??
        new _$BlogUpdateRequest._(
            blogId: blogId, description: description, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
