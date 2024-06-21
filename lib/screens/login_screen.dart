import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locate_me/riverpod/userfuture_provider.dart';
import 'package:locate_me/riverpod/userbox_provider.dart';
import 'package:locate_me/services/messages.dart';
import 'package:locate_me/services/textstyle.dart';
import 'package:locate_me/widgets/button.dart';
import 'package:locate_me/widgets/text_form.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String phoneNumber = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userNotifierProvider.notifier).addUser();
    });
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    height: 100,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Locate Me',
                    style: Style.style1,
                  ),
                  const SizedBox(height: 30),
                  TextForm(
                    controller: phoneController,
                    obscureText: false,
                    hintText: 'Enter your phone number',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number!';
                      } else if (value.length != 10) {
                        return 'Phone number should be 10 characters long!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      phoneNumber = value!;
                    },
                  ),
                  const SizedBox(height: 30),
                  TextForm(
                    controller: passController,
                    obscureText: true,
                    hintText: 'Enter your password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password!';
                      } else if (value.length != 4) {
                        return 'Password should be of 4 characters!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  const SizedBox(height: 30),
                  Button(
                    width: MediaQuery.of(context).size.width > 500
                        ? MediaQuery.of(context).size.width / 2
                        : null,
                    text: 'Login',
                    onPressedLogin: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        final params = {
                          'phoneNumber': phoneNumber,
                          'password': password,
                        };
                        final user =
                            await ref.read(userFutureProvider(params).future);

                        if (user && context.mounted) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/home', (route) => false);
                          successMssg('Login Successfull!');
                        } else {
                          errorMssg('Login Unsuccessfull!');
                        }
                      }
                      phoneController.clear();
                      passController.clear();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
