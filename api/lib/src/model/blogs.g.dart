// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Blogs extends Blogs {
  @override
  final BuiltList<Blog>? blogs;

  factory _$Blogs([void Function(BlogsBuilder)? updates]) =>
      (new BlogsBuilder()..update(updates))._build();

  _$Blogs._({this.blogs}) : super._();

  @override
  Blogs rebuild(void Function(BlogsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogsBuilder toBuilder() => new BlogsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Blogs && blogs == other.blogs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blogs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Blogs')..add('blogs', blogs))
        .toString();
  }
}

class BlogsBuilder implements Builder<Blogs, BlogsBuilder> {
  _$Blogs? _$v;

  ListBuilder<Blog>? _blogs;
  ListBuilder<Blog> get blogs => _$this._blogs ??= new ListBuilder<Blog>();
  set blogs(ListBuilder<Blog>? blogs) => _$this._blogs = blogs;

  BlogsBuilder() {
    Blogs._defaults(this);
  }

  BlogsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blogs = $v.blogs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Blogs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Blogs;
  }

  @override
  void update(void Function(BlogsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Blogs build() => _build();

  _$Blogs _build() {
    _$Blogs _$result;
    try {
      _$result = _$v ?? new _$Blogs._(blogs: _blogs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blogs';
        _blogs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Blogs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
