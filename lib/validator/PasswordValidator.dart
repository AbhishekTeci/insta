mixin pass_validator {
 static bool validatePassword(String password) {
    if (password.length == 6) {
      return true;
    }
    return false;
  }

}