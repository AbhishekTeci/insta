import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputTextField extends StatefulWidget {
  const inputTextField({Key? key}) : super(key: key);

  @override
  State<inputTextField> createState() => _inputTextFieldState();
}

class _inputTextFieldState extends State<inputTextField> {


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: 'Email',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10))
      ),
    );
  }
}
