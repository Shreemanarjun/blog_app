//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users.g.dart';

/// Users
///
/// Properties:
/// * [users] 
@BuiltValue()
abstract class Users implements Built<Users, UsersBuilder> {
  @BuiltValueField(wireName: r'users')
  BuiltList<User>? get users;

  Users._();

  factory Users([void updates(UsersBuilder b)]) = _$Users;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Users> get serializer => _$UsersSerializer();
}

class _$UsersSerializer implements PrimitiveSerializer<Users> {
  @override
  final Iterable<Type> types = const [Users, _$Users];

  @override
  final String wireName = r'Users';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Users object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.users != null) {
      yield r'users';
      yield serializers.serialize(
        object.users,
        specifiedType: const FullType(BuiltList, [FullType(User)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Users object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.users.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Users deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersBuilder();
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

