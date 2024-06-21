import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locate_me/models/person_model.dart';
import 'package:locate_me/services/const.dart';

final apiProvider = FutureProvider(
  (ref) async {
    final dio = Dio();

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
  },
);
