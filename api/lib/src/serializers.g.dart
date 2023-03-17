// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(BlogRequest.serializer)
      ..add(BlogUpdateRequest.serializer)
      ..add(Blogs.serializer)
      ..add(BlogsBlogsInner.serializer)
      ..add(ErrorMessage.serializer)
      ..add(MyToken.serializer)
      ..add(SuccessMessage.serializer)
      ..add(Tokens.serializer)
      ..add(TokensTokensInner.serializer)
      ..add(UserLoginRequest.serializer)
      ..add(UserSignUpRequest.serializer)
      ..add(Users.serializer)
      ..add(UsersUsersInner.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BlogsBlogsInner)]),
          () => new ListBuilder<BlogsBlogsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TokensTokensInner)]),
          () => new ListBuilder<TokensTokensInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UsersUsersInner)]),
          () => new ListBuilder<UsersUsersInner>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
