//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/users_users_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users.g.dart';

/// Users
///
/// Properties:
/// * [users] 
abstract class Users implements Built<Users, UsersBuilder> {
    @BuiltValueField(wireName: r'users')
    BuiltList<UsersUsersInner>? get users;

    Users._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UsersBuilder b) => b;

    factory Users([void updates(UsersBuilder b)]) = _$Users;

    @BuiltValueSerializer(custom: true)
    static Serializer<Users> get serializer => _$UsersSerializer();
}

class _$UsersSerializer implements StructuredSerializer<Users> {
    @override
    final Iterable<Type> types = const [Users, _$Users];

    @override
    final String wireName = r'Users';

    @override
    Iterable<Object?> serialize(Serializers serializers, Users object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.users != null) {
            result
                ..add(r'users')
                ..add(serializers.serialize(object.users,
                    specifiedType: const FullType(BuiltList, [FullType(UsersUsersInner)])));
        }
        return result;
    }

    @override
    Users deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UsersBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'users':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(UsersUsersInner)])) as BuiltList<UsersUsersInner>;
                    result.users.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

