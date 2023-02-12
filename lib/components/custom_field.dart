import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key,required this.hintText,required this.prefixIcon});

  final String hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(23),
          filled: true,
          fillColor: Colors.grey.shade200,
          prefixIcon: Icon(
            prefixIcon,
            color:const Color(0XFF3430CA),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0XFF3430CA),
            ),
          ),
          hintText:hintText),
    );
  }
}
