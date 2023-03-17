//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/tokens_tokens_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokens.g.dart';

/// Tokens
///
/// Properties:
/// * [tokens] 
abstract class Tokens implements Built<Tokens, TokensBuilder> {
    @BuiltValueField(wireName: r'tokens')
    BuiltList<TokensTokensInner>? get tokens;

    Tokens._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TokensBuilder b) => b;

    factory Tokens([void updates(TokensBuilder b)]) = _$Tokens;

    @BuiltValueSerializer(custom: true)
    static Serializer<Tokens> get serializer => _$TokensSerializer();
}

class _$TokensSerializer implements StructuredSerializer<Tokens> {
    @override
    final Iterable<Type> types = const [Tokens, _$Tokens];

    @override
    final String wireName = r'Tokens';

    @override
    Iterable<Object?> serialize(Serializers serializers, Tokens object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.tokens != null) {
            result
                ..add(r'tokens')
                ..add(serializers.serialize(object.tokens,
                    specifiedType: const FullType(BuiltList, [FullType(TokensTokensInner)])));
        }
        return result;
    }

    @override
    Tokens deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TokensBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'tokens':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(TokensTokensInner)])) as BuiltList<TokensTokensInner>;
                    result.tokens.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

