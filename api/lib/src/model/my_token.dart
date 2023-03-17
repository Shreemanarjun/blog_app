//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'my_token.g.dart';

/// MyToken
///
/// Properties:
/// * [accessToken] 
/// * [refreshToken] 
abstract class MyToken implements Built<MyToken, MyTokenBuilder> {
    @BuiltValueField(wireName: r'accessToken')
    String? get accessToken;

    @BuiltValueField(wireName: r'refreshToken')
    String? get refreshToken;

    MyToken._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MyTokenBuilder b) => b;

    factory MyToken([void updates(MyTokenBuilder b)]) = _$MyToken;

    @BuiltValueSerializer(custom: true)
    static Serializer<MyToken> get serializer => _$MyTokenSerializer();
}

class _$MyTokenSerializer implements StructuredSerializer<MyToken> {
    @override
    final Iterable<Type> types = const [MyToken, _$MyToken];

    @override
    final String wireName = r'MyToken';

    @override
    Iterable<Object?> serialize(Serializers serializers, MyToken object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.accessToken != null) {
            result
                ..add(r'accessToken')
                ..add(serializers.serialize(object.accessToken,
                    specifiedType: const FullType(String)));
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
    MyToken deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MyTokenBuilder();

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

