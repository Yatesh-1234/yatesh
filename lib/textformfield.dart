import 'package:flutter/material.dart';


class Textfieldform extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  Textfieldform({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1.2, color: const Color(0xff212121).withOpacity(0.2)),
              borderRadius: BorderRadius.circular(6.0)),
        ),
      ),
    );
  }
}
// TODO Implement this library.