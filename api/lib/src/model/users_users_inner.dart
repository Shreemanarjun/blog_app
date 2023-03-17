//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_users_inner.g.dart';

/// UsersUsersInner
///
/// Properties:
/// * [id] 
/// * [password] 
/// * [username] 
abstract class UsersUsersInner implements Built<UsersUsersInner, UsersUsersInnerBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'password')
    String? get password;

    @BuiltValueField(wireName: r'username')
    String? get username;

    UsersUsersInner._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UsersUsersInnerBuilder b) => b;

    factory UsersUsersInner([void updates(UsersUsersInnerBuilder b)]) = _$UsersUsersInner;

    @BuiltValueSerializer(custom: true)
    static Serializer<UsersUsersInner> get serializer => _$UsersUsersInnerSerializer();
}

class _$UsersUsersInnerSerializer implements StructuredSerializer<UsersUsersInner> {
    @override
    final Iterable<Type> types = const [UsersUsersInner, _$UsersUsersInner];

    @override
    final String wireName = r'UsersUsersInner';

    @override
    Iterable<Object?> serialize(Serializers serializers, UsersUsersInner object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
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
    UsersUsersInner deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UsersUsersInnerBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
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

