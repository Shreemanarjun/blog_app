//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'success_message.g.dart';

/// SuccessMessage
///
/// Properties:
/// * [message] 
abstract class SuccessMessage implements Built<SuccessMessage, SuccessMessageBuilder> {
    @BuiltValueField(wireName: r'message')
    String? get message;

    SuccessMessage._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SuccessMessageBuilder b) => b;

    factory SuccessMessage([void updates(SuccessMessageBuilder b)]) = _$SuccessMessage;

    @BuiltValueSerializer(custom: true)
    static Serializer<SuccessMessage> get serializer => _$SuccessMessageSerializer();
}

class _$SuccessMessageSerializer implements StructuredSerializer<SuccessMessage> {
    @override
    final Iterable<Type> types = const [SuccessMessage, _$SuccessMessage];

    @override
    final String wireName = r'SuccessMessage';

    @override
    Iterable<Object?> serialize(Serializers serializers, SuccessMessage object,
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
    SuccessMessage deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SuccessMessageBuilder();

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

