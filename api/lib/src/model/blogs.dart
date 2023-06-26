//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/blog.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blogs.g.dart';

/// Blogs
///
/// Properties:
/// * [blogs] 
@BuiltValue()
abstract class Blogs implements Built<Blogs, BlogsBuilder> {
  @BuiltValueField(wireName: r'blogs')
  BuiltList<Blog>? get blogs;

  Blogs._();

  factory Blogs([void updates(BlogsBuilder b)]) = _$Blogs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlogsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Blogs> get serializer => _$BlogsSerializer();
}

class _$BlogsSerializer implements PrimitiveSerializer<Blogs> {
  @override
  final Iterable<Type> types = const [Blogs, _$Blogs];

  @override
  final String wireName = r'Blogs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Blogs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.blogs != null) {
      yield r'blogs';
      yield serializers.serialize(
        object.blogs,
        specifiedType: const FullType(BuiltList, [FullType(Blog)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Blogs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlogsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'blogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Blog)]),
          ) as BuiltList<Blog>;
          result.blogs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Blogs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlogsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

