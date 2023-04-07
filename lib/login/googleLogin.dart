
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
class GoogleLogin {

  static googleLogin() {
    _googleSignIn.signIn();


  }

  static SignOut() {
    _googleSignIn.disconnect();
  }

}