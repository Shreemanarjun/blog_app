//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokens_tokens_inner.g.dart';

/// TokensTokensInner
///
/// Properties:
/// * [accessToken] 
/// * [id] 
/// * [refreshToken] 
abstract class TokensTokensInner implements Built<TokensTokensInner, TokensTokensInnerBuilder> {
    @BuiltValueField(wireName: r'accessToken')
    String? get accessToken;

    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'refreshToken')
    String? get refreshToken;

    TokensTokensInner._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TokensTokensInnerBuilder b) => b;

    factory TokensTokensInner([void updates(TokensTokensInnerBuilder b)]) = _$TokensTokensInner;

    @BuiltValueSerializer(custom: true)
    static Serializer<TokensTokensInner> get serializer => _$TokensTokensInnerSerializer();
}

class _$TokensTokensInnerSerializer implements StructuredSerializer<TokensTokensInner> {
    @override
    final Iterable<Type> types = const [TokensTokensInner, _$TokensTokensInner];

    @override
    final String wireName = r'TokensTokensInner';

    @override
    Iterable<Object?> serialize(Serializers serializers, TokensTokensInner object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.accessToken != null) {
            result
                ..add(r'accessToken')
                ..add(serializers.serialize(object.accessToken,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.refreshToken != null) {
            result
                ..add(r'refreshToken')
                ..add(serializers.serialize(object.refreshToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    TokensTokensInner deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TokensTokensInnerBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'accessToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accessToken = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'refreshToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.refreshToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

