//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/tokens_tokens_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokens.g.dart';

/// Tokens
///
/// Properties:
/// * [tokens] 
@BuiltValue()
abstract class Tokens implements Built<Tokens, TokensBuilder> {
  @BuiltValueField(wireName: r'tokens')
  BuiltList<TokensTokensInner>? get tokens;

  Tokens._();

  factory Tokens([void updates(TokensBuilder b)]) = _$Tokens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Tokens> get serializer => _$TokensSerializer();
}

class _$TokensSerializer implements PrimitiveSerializer<Tokens> {
  @override
  final Iterable<Type> types = const [Tokens, _$Tokens];

  @override
  final String wireName = r'Tokens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Tokens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tokens != null) {
      yield r'tokens';
      yield serializers.serialize(
        object.tokens,
        specifiedType: const FullType(BuiltList, [FullType(TokensTokensInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Tokens object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokensBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TokensTokensInner)]),
          ) as BuiltList<TokensTokensInner>;
          result.tokens.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Tokens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokensBuilder();
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

