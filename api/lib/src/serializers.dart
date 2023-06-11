//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/blog_request.dart';
import 'package:openapi/src/model/blog_update_request.dart';
import 'package:openapi/src/model/blogs.dart';
import 'package:openapi/src/model/blogs_blogs_inner.dart';
import 'package:openapi/src/model/error_message.dart';
import 'package:openapi/src/model/my_token.dart';
import 'package:openapi/src/model/success_message.dart';
import 'package:openapi/src/model/tokens.dart';
import 'package:openapi/src/model/tokens_tokens_inner.dart';
import 'package:openapi/src/model/user_login_request.dart';
import 'package:openapi/src/model/user_sign_up_request.dart';
import 'package:openapi/src/model/users.dart';
import 'package:openapi/src/model/users_users_inner.dart';

part 'serializers.g.dart';

@SerializersFor([
  BlogRequest,
  BlogUpdateRequest,
  Blogs,
  BlogsBlogsInner,
  ErrorMessage,
  MyToken,
  SuccessMessage,
  Tokens,
  TokensTokensInner,
  UserLoginRequest,
  UserSignUpRequest,
  Users,
  UsersUsersInner,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
