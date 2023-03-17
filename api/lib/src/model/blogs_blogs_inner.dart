//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blogs_blogs_inner.g.dart';

/// BlogsBlogsInner
///
/// Properties:
/// * [createdAt] 
/// * [description] 
/// * [id] 
/// * [title] 
/// * [updatedAt] 
/// * [userID] 
abstract class BlogsBlogsInner implements Built<BlogsBlogsInner, BlogsBlogsInnerBuilder> {
    @BuiltValueField(wireName: r'createdAt')
    String? get createdAt;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'updatedAt')
    String? get updatedAt;

    @BuiltValueField(wireName: r'userID')
    int? get userID;

    BlogsBlogsInner._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BlogsBlogsInnerBuilder b) => b;

    factory BlogsBlogsInner([void updates(BlogsBlogsInnerBuilder b)]) = _$BlogsBlogsInner;

    @BuiltValueSerializer(custom: true)
    static Serializer<BlogsBlogsInner> get serializer => _$BlogsBlogsInnerSerializer();
}

class _$BlogsBlogsInnerSerializer implements StructuredSerializer<BlogsBlogsInner> {
    @override
    final Iterable<Type> types = const [BlogsBlogsInner, _$BlogsBlogsInner];

    @override
    final String wireName = r'BlogsBlogsInner';

    @override
    Iterable<Object?> serialize(Serializers serializers, BlogsBlogsInner object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.createdAt != null) {
            result
                ..add(r'createdAt')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.updatedAt != null) {
            result
                ..add(r'updatedAt')
                ..add(serializers.serialize(object.updatedAt,
                    specifiedType: const FullType(String)));
        }
        if (object.userID != null) {
            result
                ..add(r'userID')
                ..add(serializers.serialize(object.userID,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    BlogsBlogsInner deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BlogsBlogsInnerBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'createdAt':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.createdAt = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'updatedAt':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.updatedAt = valueDes;
                    break;
                case r'userID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.userID = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

