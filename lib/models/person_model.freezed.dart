// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonsApi _$PersonsApiFromJson(Map<String, dynamic> json) {
  return _PersonsApi.fromJson(json);
}

/// @nodoc
mixin _$PersonsApi {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Person> get person => throw _privateConstructorUsedError;
  Support get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsApiCopyWith<PersonsApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsApiCopyWith<$Res> {
  factory $PersonsApiCopyWith(
          PersonsApi value, $Res Function(PersonsApi) then) =
      _$PersonsApiCopyWithImpl<$Res, PersonsApi>;
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'per_page') int perPage,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'data') List<Person> person,
      Support support});

  $SupportCopyWith<$Res> get support;
}

/// @nodoc
class _$PersonsApiCopyWithImpl<$Res, $Val extends PersonsApi>
    implements $PersonsApiCopyWith<$Res> {
  _$PersonsApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? person = null,
    Object? support = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      support: null == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportCopyWith<$Res> get support {
    return $SupportCopyWith<$Res>(_value.support, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonsApiImplCopyWith<$Res>
    implements $PersonsApiCopyWith<$Res> {
  factory _$$PersonsApiImplCopyWith(
          _$PersonsApiImpl value, $Res Function(_$PersonsApiImpl) then) =
      __$$PersonsApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      @JsonKey(name: 'per_page') int perPage,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'data') List<Person> person,
      Support support});

  @override
  $SupportCopyWith<$Res> get support;
}

/// @nodoc
class __$$PersonsApiImplCopyWithImpl<$Res>
    extends _$PersonsApiCopyWithImpl<$Res, _$PersonsApiImpl>
    implements _$$PersonsApiImplCopyWith<$Res> {
  __$$PersonsApiImplCopyWithImpl(
      _$PersonsApiImpl _value, $Res Function(_$PersonsApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? totalPages = null,
    Object? person = null,
    Object? support = null,
  }) {
    return _then(_$PersonsApiImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      person: null == person
          ? _value._person
          : person // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      support: null == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonsApiImpl implements _PersonsApi {
  const _$PersonsApiImpl(
      {required this.page,
      @JsonKey(name: 'per_page') required this.perPage,
      required this.total,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'data') required final List<Person> person,
      required this.support})
      : _person = person;

  factory _$PersonsApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonsApiImplFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  final int total;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<Person> _person;
  @override
  @JsonKey(name: 'data')
  List<Person> get person {
    if (_person is EqualUnmodifiableListView) return _person;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_person);
  }

  @override
  final Support support;

  @override
  String toString() {
    return 'PersonsApi(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, person: $person, support: $support)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsApiImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._person, _person) &&
            (identical(other.support, support) || other.support == support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_person), support);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonsApiImplCopyWith<_$PersonsApiImpl> get copyWith =>
      __$$PersonsApiImplCopyWithImpl<_$PersonsApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonsApiImplToJson(
      this,
    );
  }
}

abstract class _PersonsApi implements PersonsApi {
  const factory _PersonsApi(
      {required final int page,
      @JsonKey(name: 'per_page') required final int perPage,
      required final int total,
      @JsonKey(name: 'total_pages') required final int totalPages,
      @JsonKey(name: 'data') required final List<Person> person,
      required final Support support}) = _$PersonsApiImpl;

  factory _PersonsApi.fromJson(Map<String, dynamic> json) =
      _$PersonsApiImpl.fromJson;

  @override
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  int get total;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'data')
  List<Person> get person;
  @override
  Support get support;
  @override
  @JsonKey(ignore: true)
  _$$PersonsApiImplCopyWith<_$PersonsApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String avatar});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String avatar});
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
  }) {
    return _then(_$PersonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl implements _Person {
  const _$PersonImpl(
      {required this.id,
      required this.email,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.avatar =
          'https://upload.wikimedia.org/wikipedia/commons/9/9e/Placeholder_Person.jpg'});

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey()
  final String avatar;

  @override
  String toString() {
    return 'Person(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, firstName, lastName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person implements Person {
  const factory _Person(
      {required final int id,
      required final String email,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      final String avatar}) = _$PersonImpl;

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Support _$SupportFromJson(Map<String, dynamic> json) {
  return _Support.fromJson(json);
}

/// @nodoc
mixin _$Support {
  String get url => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportCopyWith<Support> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCopyWith<$Res> {
  factory $SupportCopyWith(Support value, $Res Function(Support) then) =
      _$SupportCopyWithImpl<$Res, Support>;
  @useResult
  $Res call({String url, String text});
}

/// @nodoc
class _$SupportCopyWithImpl<$Res, $Val extends Support>
    implements $SupportCopyWith<$Res> {
  _$SupportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportImplCopyWith<$Res> implements $SupportCopyWith<$Res> {
  factory _$$SupportImplCopyWith(
          _$SupportImpl value, $Res Function(_$SupportImpl) then) =
      __$$SupportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String text});
}

/// @nodoc
class __$$SupportImplCopyWithImpl<$Res>
    extends _$SupportCopyWithImpl<$Res, _$SupportImpl>
    implements _$$SupportImplCopyWith<$Res> {
  __$$SupportImplCopyWithImpl(
      _$SupportImpl _value, $Res Function(_$SupportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? text = null,
  }) {
    return _then(_$SupportImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportImpl implements _Support {
  const _$SupportImpl({required this.url, required this.text});

  factory _$SupportImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportImplFromJson(json);

  @override
  final String url;
  @override
  final String text;

  @override
  String toString() {
    return 'Support(url: $url, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportImplCopyWith<_$SupportImpl> get copyWith =>
      __$$SupportImplCopyWithImpl<_$SupportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportImplToJson(
      this,
    );
  }
}

abstract class _Support implements Support {
  const factory _Support(
      {required final String url, required final String text}) = _$SupportImpl;

  factory _Support.fromJson(Map<String, dynamic> json) = _$SupportImpl.fromJson;

  @override
  String get url;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$SupportImplCopyWith<_$SupportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
