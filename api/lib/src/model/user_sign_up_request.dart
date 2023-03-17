//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_sign_up_request.g.dart';

/// UserSignUpRequest
///
/// Properties:
/// * [password] 
/// * [username] 
abstract class UserSignUpRequest implements Built<UserSignUpRequest, UserSignUpRequestBuilder> {
    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'username')
    String? get username;

    UserSignUpRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserSignUpRequestBuilder b) => b;

    factory UserSignUpRequest([void updates(UserSignUpRequestBuilder b)]) = _$UserSignUpRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserSignUpRequest> get serializer => _$UserSignUpRequestSerializer();
}

class _$UserSignUpRequestSerializer implements StructuredSerializer<UserSignUpRequest> {
    @override
    final Iterable<Type> types = const [UserSignUpRequest, _$UserSignUpRequest];

    @override
    final String wireName = r'UserSignUpRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserSignUpRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType(String)));
        }
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserSignUpRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserSignUpRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
                case r'username':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.username = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

