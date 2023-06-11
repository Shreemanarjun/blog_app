//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blog_update_request.g.dart';

/// BlogUpdateRequest
///
/// Properties:
/// * [blogId] 
/// * [description] 
/// * [title] 
@BuiltValue()
abstract class BlogUpdateRequest implements Built<BlogUpdateRequest, BlogUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'blogId')
  int? get blogId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'title')
  String? get title;

  BlogUpdateRequest._();

  factory BlogUpdateRequest([void updates(BlogUpdateRequestBuilder b)]) = _$BlogUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlogUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlogUpdateRequest> get serializer => _$BlogUpdateRequestSerializer();
}

class _$BlogUpdateRequestSerializer implements PrimitiveSerializer<BlogUpdateRequest> {
  @override
  final Iterable<Type> types = const [BlogUpdateRequest, _$BlogUpdateRequest];

  @override
  final String wireName = r'BlogUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlogUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.blogId != null) {
      yield r'blogId';
      yield serializers.serialize(
        object.blogId,
        specifiedType: const FullType(int),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BlogUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlogUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'blogId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blogId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BlogUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlogUpdateRequestBuilder();
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

