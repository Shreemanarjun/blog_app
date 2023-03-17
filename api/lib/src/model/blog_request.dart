//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blog_request.g.dart';

/// BlogRequest
///
/// Properties:
/// * [description] 
/// * [title] 
abstract class BlogRequest implements Built<BlogRequest, BlogRequestBuilder> {
    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'title')
    String? get title;

    BlogRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BlogRequestBuilder b) => b;

    factory BlogRequest([void updates(BlogRequestBuilder b)]) = _$BlogRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<BlogRequest> get serializer => _$BlogRequestSerializer();
}

class _$BlogRequestSerializer implements StructuredSerializer<BlogRequest> {
    @override
    final Iterable<Type> types = const [BlogRequest, _$BlogRequest];

    @override
    final String wireName = r'BlogRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, BlogRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
    BlogRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BlogRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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

