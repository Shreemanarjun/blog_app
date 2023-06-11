//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_sign_up_request.g.dart';

/// UserSignUpRequest
///
/// Properties:
/// * [password] 
/// * [username] 
@BuiltValue()
abstract class UserSignUpRequest implements Built<UserSignUpRequest, UserSignUpRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'username')
  String? get username;

  UserSignUpRequest._();

  factory UserSignUpRequest([void updates(UserSignUpRequestBuilder b)]) = _$UserSignUpRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSignUpRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSignUpRequest> get serializer => _$UserSignUpRequestSerializer();
}

class _$UserSignUpRequestSerializer implements PrimitiveSerializer<UserSignUpRequest> {
  @override
  final Iterable<Type> types = const [UserSignUpRequest, _$UserSignUpRequest];

  @override
  final String wireName = r'UserSignUpRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSignUpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSignUpRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSignUpRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSignUpRequestBuilder();
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

