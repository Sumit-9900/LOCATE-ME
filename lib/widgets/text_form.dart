import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.hintText,
    required this.validator,
    required this.onSaved,
    required this.obscureText,
    required this.controller,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String?) onSaved;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 500
          ? MediaQuery.of(context).size.width / 2
          : null,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
