//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokens_tokens_inner.g.dart';

/// TokensTokensInner
///
/// Properties:
/// * [accessToken] 
/// * [id] 
/// * [refreshToken] 
@BuiltValue()
abstract class TokensTokensInner implements Built<TokensTokensInner, TokensTokensInnerBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String? get accessToken;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  TokensTokensInner._();

  factory TokensTokensInner([void updates(TokensTokensInnerBuilder b)]) = _$TokensTokensInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokensTokensInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokensTokensInner> get serializer => _$TokensTokensInnerSerializer();
}

class _$TokensTokensInnerSerializer implements PrimitiveSerializer<TokensTokensInner> {
  @override
  final Iterable<Type> types = const [TokensTokensInner, _$TokensTokensInner];

  @override
  final String wireName = r'TokensTokensInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokensTokensInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'accessToken';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TokensTokensInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokensTokensInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokensTokensInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokensTokensInnerBuilder();
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

