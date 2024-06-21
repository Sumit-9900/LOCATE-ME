import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:locate_me/models/user_model.dart';

final userFutureProvider = FutureProvider.family<bool, Map<String, dynamic>>(
  (ref, params) async {
    final phoneNumber = params['phoneNumber'];
    final password = params['password'];

    final Box<User> userBox = Hive.box<User>('users');

    Future<bool> getUser1(String phoneNumber, String passwordd) async {
      var res = false;
      var data = userBox.values
          .where((item) =>
              (item.phoneNumber == phoneNumber && item.password == passwordd))
          .toList();
      if (data.isNotEmpty) {
        res = true;
      } else {
        res = false;
      }
      return res;
    }

    final provider = getUser1(phoneNumber, password);
    return provider;
  },
);
