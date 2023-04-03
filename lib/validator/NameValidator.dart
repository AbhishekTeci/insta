import 'package:flutter/material.dart';

mixin name_validator {


  static bool validateName(String name) {
    RegExp nameRegExp = RegExp('[a-zA-Z]');
    if (name.isEmpty) {
      return false;
    } else {
      if (nameRegExp.hasMatch(name)) {
        return true;
      }
      return false;
    }
  }


}
