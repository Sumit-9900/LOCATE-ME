import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
class PersonsApi with _$PersonsApi {
  const factory PersonsApi({
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'data') required List<Person> person,
    required Support support,
  }) = _PersonsApi;

  factory PersonsApi.fromJson(Map<String, dynamic> json) =>
      _$PersonsApiFromJson(json);
}

@freezed
class Person with _$Person {
  const factory Person({
    required int id,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @Default(
        'https://upload.wikimedia.org/wikipedia/commons/9/9e/Placeholder_Person.jpg')
    String avatar,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
class Support with _$Support {
  const factory Support({
    required String url,
    required String text,
  }) = _Support;

  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);
}
