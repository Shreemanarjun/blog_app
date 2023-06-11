//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'success_message.g.dart';

/// SuccessMessage
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class SuccessMessage implements Built<SuccessMessage, SuccessMessageBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  SuccessMessage._();

  factory SuccessMessage([void updates(SuccessMessageBuilder b)]) = _$SuccessMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuccessMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuccessMessage> get serializer => _$SuccessMessageSerializer();
}

class _$SuccessMessageSerializer implements PrimitiveSerializer<SuccessMessage> {
  @override
  final Iterable<Type> types = const [SuccessMessage, _$SuccessMessage];

  @override
  final String wireName = r'SuccessMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuccessMessage object, {
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
    SuccessMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuccessMessageBuilder result,
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
  SuccessMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuccessMessageBuilder();
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

