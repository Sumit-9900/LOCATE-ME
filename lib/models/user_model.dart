import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  User({
    required this.phoneNumber,
    required this.password,
  });

  @HiveField(0)
  final String phoneNumber;

  @HiveField(1)
  final String password;

  @override
  String toString() {
    return 'User(phoneNo: $phoneNumber, pass: $password)';
  }
}
