import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:locate_me/models/user_model.dart';
import 'package:locate_me/riverpod/hive_box.dart';
import 'package:locate_me/services/messages.dart';

class UserNotifier extends StateNotifier<List<User>> {
  final Box<User> userBox;
  UserNotifier(this.userBox) : super([]);

  List<User> users = [];

  void addUser() {
    userBox.put('user1', User(phoneNumber: '9035600155', password: '1234'));
    userBox.put('user2', User(phoneNumber: '8090809090', password: '9876'));
  }

  void getUser(String phoneNumber, String password, BuildContext context) {
    users.clear();
    for (int i = 0; i < userBox.keys.length; i++) {
      users.add(userBox.getAt(i)!);
    }
    for (int i = 0; i < userBox.keys.length; i++) {
      if (users[i].phoneNumber == phoneNumber &&
          users[i].password == password) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (route) => false);
        successMssg('Login Successfull!');
        break;
      } else {
        errorMssg('Login Unsuccessfull!');
      }
    }
  }

  void logOut(BuildContext context) {
    userBox.deleteAll(['user1', 'user2']);
    Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
    successMssg('LogOut Successfully!');
  }
}

final userNotifierProvider =
    StateNotifierProvider<UserNotifier, List<User>>((ref) {
  final userBox = ref.watch(userBoxProvider);
  return UserNotifier(userBox);
});
