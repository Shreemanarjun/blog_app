//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_message.g.dart';

/// ErrorMessage
///
/// Properties:
/// * [message] 
abstract class ErrorMessage implements Built<ErrorMessage, ErrorMessageBuilder> {
    @BuiltValueField(wireName: r'message')
    String? get message;

    ErrorMessage._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ErrorMessageBuilder b) => b;

    factory ErrorMessage([void updates(ErrorMessageBuilder b)]) = _$ErrorMessage;

    @BuiltValueSerializer(custom: true)
    static Serializer<ErrorMessage> get serializer => _$ErrorMessageSerializer();
}

class _$ErrorMessageSerializer implements StructuredSerializer<ErrorMessage> {
    @override
    final Iterable<Type> types = const [ErrorMessage, _$ErrorMessage];

    @override
    final String wireName = r'ErrorMessage';

    @override
    Iterable<Object?> serialize(Serializers serializers, ErrorMessage object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ErrorMessage deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ErrorMessageBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'message':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.message = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

