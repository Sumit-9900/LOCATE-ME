import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locate_me/models/person_model.dart';
import 'package:locate_me/services/const.dart';

class ApiModel extends StateNotifier<List<Person>> {
  ApiModel() : super([]);

  final dio = Dio();

  Future<List<Person>> fetchPersonData() async {
    try {
      final response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        final person = PersonsApi.fromJson(response.data);
        return person.person;
      } else {
        throw Exception(response.statusCode.toString());
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

final apiModelProvider = StateNotifierProvider<ApiModel, List<Person>>((ref) {
  return ApiModel();
});
