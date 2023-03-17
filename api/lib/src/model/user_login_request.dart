//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_login_request.g.dart';

/// UserLoginRequest
///
/// Properties:
/// * [password] 
/// * [username] 
abstract class UserLoginRequest implements Built<UserLoginRequest, UserLoginRequestBuilder> {
    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'username')
    String? get username;

    UserLoginRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserLoginRequestBuilder b) => b;

    factory UserLoginRequest([void updates(UserLoginRequestBuilder b)]) = _$UserLoginRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserLoginRequest> get serializer => _$UserLoginRequestSerializer();
}

class _$UserLoginRequestSerializer implements StructuredSerializer<UserLoginRequest> {
    @override
    final Iterable<Type> types = const [UserLoginRequest, _$UserLoginRequest];

    @override
    final String wireName = r'UserLoginRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserLoginRequest object,
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
    UserLoginRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserLoginRequestBuilder();

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

