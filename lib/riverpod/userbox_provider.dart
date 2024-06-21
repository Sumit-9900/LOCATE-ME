import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:locate_me/models/user_model.dart';
import 'package:locate_me/riverpod/hive_box.dart';

class UserNotifier extends StateNotifier<User> {
  final Box<User> userBox;
  UserNotifier(this.userBox) : super(User(phoneNumber: '', password: ''));

  List<User> users = [];

  void addUser() {
    userBox.put('user1', User(phoneNumber: '9035600155', password: '1234'));
    userBox.put('user2', User(phoneNumber: '8090809090', password: '9876'));
  }

  void logOut() {
    userBox.deleteAll(['user1', 'user2']);
  }
}

final userNotifierProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  final userBox = ref.watch(userBoxProvider);
  return UserNotifier(userBox);
});
