//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_message.g.dart';

/// ErrorMessage
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class ErrorMessage implements Built<ErrorMessage, ErrorMessageBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  ErrorMessage._();

  factory ErrorMessage([void updates(ErrorMessageBuilder b)]) = _$ErrorMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorMessage> get serializer => _$ErrorMessageSerializer();
}

class _$ErrorMessageSerializer implements PrimitiveSerializer<ErrorMessage> {
  @override
  final Iterable<Type> types = const [ErrorMessage, _$ErrorMessage];

  @override
  final String wireName = r'ErrorMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorMessageBuilder();
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

