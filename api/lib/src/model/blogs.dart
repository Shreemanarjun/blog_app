//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/blogs_blogs_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blogs.g.dart';

/// Blogs
///
/// Properties:
/// * [blogs] 
abstract class Blogs implements Built<Blogs, BlogsBuilder> {
    @BuiltValueField(wireName: r'blogs')
    BuiltList<BlogsBlogsInner>? get blogs;

    Blogs._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BlogsBuilder b) => b;

    factory Blogs([void updates(BlogsBuilder b)]) = _$Blogs;

    @BuiltValueSerializer(custom: true)
    static Serializer<Blogs> get serializer => _$BlogsSerializer();
}

class _$BlogsSerializer implements StructuredSerializer<Blogs> {
    @override
    final Iterable<Type> types = const [Blogs, _$Blogs];

    @override
    final String wireName = r'Blogs';

    @override
    Iterable<Object?> serialize(Serializers serializers, Blogs object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.blogs != null) {
            result
                ..add(r'blogs')
                ..add(serializers.serialize(object.blogs,
                    specifiedType: const FullType(BuiltList, [FullType(BlogsBlogsInner)])));
        }
        return result;
    }

    @override
    Blogs deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BlogsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'blogs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(BlogsBlogsInner)])) as BuiltList<BlogsBlogsInner>;
                    result.blogs.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

