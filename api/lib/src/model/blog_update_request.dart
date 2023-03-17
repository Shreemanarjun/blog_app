//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blog_update_request.g.dart';

/// BlogUpdateRequest
///
/// Properties:
/// * [blogId] 
/// * [description] 
/// * [title] 
abstract class BlogUpdateRequest implements Built<BlogUpdateRequest, BlogUpdateRequestBuilder> {
    @BuiltValueField(wireName: r'blogId')
    int? get blogId;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'title')
    String? get title;

    BlogUpdateRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BlogUpdateRequestBuilder b) => b;

    factory BlogUpdateRequest([void updates(BlogUpdateRequestBuilder b)]) = _$BlogUpdateRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<BlogUpdateRequest> get serializer => _$BlogUpdateRequestSerializer();
}

class _$BlogUpdateRequestSerializer implements StructuredSerializer<BlogUpdateRequest> {
    @override
    final Iterable<Type> types = const [BlogUpdateRequest, _$BlogUpdateRequest];

    @override
    final String wireName = r'BlogUpdateRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, BlogUpdateRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.blogId != null) {
            result
                ..add(r'blogId')
                ..add(serializers.serialize(object.blogId,
                    specifiedType: const FullType(int)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    BlogUpdateRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BlogUpdateRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'blogId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.blogId = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

